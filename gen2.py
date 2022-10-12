import pandas as pd

digits='0123456789'

def get_type_size(t):
    s=[i for i in t if i in digits]
    return int(''.join(s))

def get_base_type(t):
    s=[i for i in t if i not in digits]
    return (''.join(s))


def identify_retval_table(df):
    return any('Vec' in str(c) for c in df.columns) and 'Ret' in df.columns

def identify_parameters_table(df):
    t=df.iloc[0, 0]
    if type(t)==str:
        return t.startswith('a')
    return False

def is_binop(t):
    return len([i for i in t.split(',') if i.strip()])>1

def get_retvals_tables(url, ops, default):
    ret={}
    for op in ops:
        tables=pd.read_html(url+op+'.html')
        retval_tables=[t for t in tables if identify_retval_table(t)]
        params=[t for t in tables if identify_parameters_table(t)]
        binop=True
        if params:
            binop=is_binop(params[-1].iloc[0, 0])
        retval_table=retval_tables[-1] if retval_tables else default(binop)
        ret[op]=retval_table
    return ret

types=pd.DataFrame([("uint", "uint8", 16),
("int", "int8", 16),
("uint", "uint16", 8),
("int", "int16", 8),
("uint", "uint32", 4),
("int", "int32", 4),
("uint", "uint64", 2),
("int", "int64", 2),
("float", "float32", 4),
("float", "float64", 2),
("uint", "uint8", 32),
("int", "int8", 32),
("uint", "uint16", 16),
("int", "int16", 16),
("uint", "uint32", 8),
("int", "int32", 8),
("uint", "uint64", 4),
("int", "int64", 4),
("float", "float32", 8),
("float", "float64", 4),
("uint", "uint8", 64),
("int", "int8", 64),
("uint", "uint16", 32),
("int", "int16", 32),
("uint", "uint32", 16),
("int", "int32", 16),
("uint", "uint64", 8),
("int", "int64", 8),
("float", "float32", 16),
("float", "float64", 8),], columns=['base_type', 'size_type', 'size'])

types['width']=types.size_type.apply(get_type_size)

mask_types=types.iloc[:]

mask_types['base_type']='mask_'+mask_types['base_type']
mask_types['size_type']='mask_'+mask_types['size_type']

types=pd.concat([types, mask_types]).reset_index(drop=True)

types['floating']=types.base_type.str.contains('float')
types['mask']=types.base_type.str.contains('mask')

types['simd_type']=types.size_type+'x'+types['size'].astype(str)

def default_retval(ints=True, floating=True, mask=False, binop=True):
    temp=types[(types.floating==floating) | (types.floating!=ints) | (types.mask==mask)]
    simd_types=temp.drop_duplicates().values
    if binop:
        return pd.DataFrame({'Ret':simd_types, 'Vec1':simd_types, 'Vec2':simd_types})
    return pd.DataFrame({'Ret':simd_types, 'Vec':simd_types})

#bitwise ops
bitops_base_url='https://p12tic.github.io/libsimdpp/v2.2-dev/libsimdpp/w/bitwise/'
bitops=[
    'bit_and',
'bit_andnot',
'bit_or',
'bit_xor',
'bit_not'
]

bitops_retvals=get_retvals_tables(bitops_base_url, bitops, default=lambda bo: default_retval(binop=bo))

#floating ops
floatops_base_url='https://p12tic.github.io/libsimdpp/v2.2-dev/libsimdpp/w/fp/'
floatops=['add',
 'sub',
 'mul',
 'div',
 'fmadd',
 'fmsub',
 'neg',
 'round',
 'trunc',
 'floor',
 'ceil',
 'cmp_eq',
 'cmp_neq',
 'cmp_lt',
 'cmp_gt',
 'cmp_le',
 'cmp_ge',
 'abs',
 'sign',
 'min',
 'max',
 'isnan',
 'isnan2',
 'sqrt',
 'rcp_e',
 'rcp_rh',
 'rsqrt_e',
 'rsqrt_rh',
 'reduce_add',
 'reduce_mul',
 'reduce_min',
 'reduce_max']

floatops_retvals=get_retvals_tables(floatops_base_url, floatops, default=lambda bo: default_retval(False, binop=bo))

#int ops
intops_base_url='https://p12tic.github.io/libsimdpp/v2.2-dev/libsimdpp/w/int/'
intops=['add',
 'sub',
 'add_sat',
 'sub_sat',
 'mul_lo',
 'mul_hi',
 'mull',
 'neg',
 'cmp_eq',
 'cmp_neq',
 'cmp_lt',
 'cmp_gt',
 'cmp_le',
 'cmp_ge',
 'abs',
 'avg',
 'avg_trunc',
 'min',
 'max',
 'shift_l',
 'shift_r',
 'reduce_add',
 'reduce_mul',
 'reduce_min',
 'reduce_max',
 'reduce_and',
 'reduce_or']

intops_retvals=get_retvals_tables(intops_base_url, intops, default=lambda bo: default_retval(True, False, binop=bo))

def get_type_combinations(ts):
    ts=[types[types.size_type==t] for t in ts]
    sizes=set(ts[0]['size'].values)
    for t in ts[1:]:
        sizes = sizes.intersection(set(t['size'].values))
    ts=[t[t['size'].isin(sizes)] for t in ts]
    for s in sizes:
        ret=[]
        for t in ts:
            ret.append(t[t['size']==s].iloc[0]['simd_type'])
        yield ret

def gen_bin_op(op, op_name, arg_type, ret_type, arg2_type=None):
    if arg2_type is None:
        return f'''proc {op}*(x, y: {arg_type}): {ret_type}  {{.header: simd, importcpp: "{op_name}(@)"}}'''

    return f'''proc {op}*(x: {arg_type}, y: {arg2_type}): {ret_type}  {{.header: simd, importcpp: "{op_name}(@)"}}'''

def gen_uni_op(op, op_name, arg_type, ret_type):
    return f'''proc {op}*(x: {arg_type}): {ret_type}  {{.header: simd, importcpp: "{op_name}(@)"}}'''


aliases={
    'add':'`+`',
    'sub':'`-`',
    'mul':'`*`',
    'div':'`/`',
    'mull':'`*`',
    'shift_l':'`<<`',
    'shift_r':'`>>`',
     'cmp_eq': '`==`',
     'cmp_neq': '`~=`',
     'cmp_lt': '`<`',
     'cmp_gt': '`>`',
     'cmp_le': '`<=`',
     'cmp_ge': '`>=`',
    'bit_and': '`&`',
    'bit_andnot': '`&~`',
    'bit_or': '`|`',
    'bit_xor': '`^`',
    'bit_not': '`~`',
}

def gen_op(op, retvals, ):
    binop=retvals.shape[1]>2
    if binop:
        for i in range(len(retvals)):
            temp=retvals.iloc[i]
            for c in get_type_combinations([temp['Ret'], temp['Vec1'], temp['Vec2']]):
                output(gen_bin_op(op, op, c[1], c[0], c[2]))
                if op in aliases:
                    output(gen_bin_op(aliases[op], op, c[1], c[0], c[2]))
    else:
        for i in range(len(retvals)):
            temp=retvals.iloc[i].to_dict()
            vec=[v for k,v in temp.items() if 'Vec' in k][0]
            for c in get_type_combinations([temp['Ret'], vec]):
                output(gen_uni_op(op, op, c[1], c[0]))
                if op in aliases:
                    output(gen_uni_op(aliases[op], op, c[1], c[0]))

def gen_simd_type(base_type, size_type, size):
    simd_type=size_type+'x'+str(size)
    args=', '.join(f'x{i}' for i in range(size))
    output(f"""
##############################################
### BEGIN {base_type}, {size_type}, {size} ###
##############################################
    
type {simd_type} {{.header: simd, importcpp: "{size_type}<{size}>".}} = object
type mask_{simd_type} {{.header: simd, importcpp: "mask_{size_type}<{size}>".}} = object

proc Vector({args}: {size_type}): {simd_type} {{.header: simd, importcpp: "make_{base_type}<{size_type}<{size}>>(@)".}}

proc extract*(k: Natural, x: {simd_type}): {size_type}  {{.header: simd, importcpp: "extract<#, {size}>(@)"}}
proc `[]`*(x: {simd_type}, i: static[Natural]): {size_type} = extract(i, x)

############################################
### END {base_type}, {size_type}, {size} ###
############################################

    """)

def gen_simd_types(s):
#     import pdb; pdb.set_trace()
    if not s['mask']:
        gen_simd_type(s['base_type'], s['size_type'], s['size'])

all_output=""
def output(s):
    global all_output
    all_output+=s+'\n'

_=types.apply(gen_simd_types, axis=1)

for retvals in [bitops_retvals, floatops_retvals, intops_retvals]:
    for k, v in retvals.items():
        gen_op(k, v)

def dedup(ls):
    curr=[]
    for l in ls:
        if l not in curr:
            curr.append(l)
        elif "###" in l:
            curr.append(l)
    return curr


with open('/home/nick/Projects/nimd/src/nimd.nim', 'a+') as f:
    f.write("""{.localPassc: "-I/home/nick/Projects/nimd/libsimdpp".}
{.emit: "using namespace simdpp;".}

const simd = "<simdpp/simd.h>"
""")
    for l in dedup([i for i in all_output.split('\n') if i.strip()]):
        f.write(l)
        f.write('\n')