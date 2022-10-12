digits='0123456789'


def get_type_size(t):
    s=[i for i in t if i in digits]
    return int(''.join(s))

def gen_bin_op(op, op_name, arg_type, ret_type, arg2_type=None):
    if arg2_type is None:
        return f'''proc {op}*(x, y: {arg_type}): {ret_type}  {{.header: simd, importcpp: "{op_name}(@)"}}'''

    return f'''proc {op}*(x: {arg_type} y: {arg2_type}): {ret_type}  {{.header: simd, importcpp: "{op_name}(@)"}}'''

def gen_uni_op(op, op_name, arg_type, ret_type):
    return f'''proc {op}*(x: {arg_type}): {ret_type}  {{.header: simd, importcpp: "{op_name}(@)"}}'''

def ops(base_type, simd_type, size_type):
    type_size=get_type_size(size_type)
    binops='\n'.join([
        gen_bin_op('`+`', 'add', simd_type, simd_type),
        gen_bin_op('`-`', 'sub', simd_type, simd_type),
        gen_bin_op('min', 'min', simd_type, size_type),
        gen_bin_op('max', 'max', simd_type, size_type),
        gen_bin_op('reduce_add', 'reduce_add', simd_type, size_type),
        gen_bin_op('reduce_min', 'reduce_min', simd_type, size_type),
        gen_bin_op('reduce_mul', 'reduce_mul', simd_type, size_type),
        gen_bin_op('reduce_max', 'reduce_max', simd_type, size_type)
    ])+"\n"
    
    if 'float' in base_type:
        binops+="\n".join([
            gen_bin_op('`*`', 'mul', simd_type, simd_type),
            gen_bin_op('`/`', 'div', simd_type, simd_type),
            gen_bin_op('fmadd', 'fmadd', simd_type, simd_type),
            gen_bin_op('fmsub', 'fmsub', simd_type, simd_type),
            gen_bin_op('cmp_eq', 'cmp_eq', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_lt', 'cmp_lt', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_le', 'cmp_le', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_neq', 'cmp_neq', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_gt', 'cmp_gt', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_ge', 'cmp_ge', simd_type, 'mask_'+simd_type),
            gen_uni_op('sign', 'sign', simd_type, simd_type),
            gen_uni_op('round', 'round', simd_type, simd_type),
            gen_uni_op('trunc', 'floor', simd_type, simd_type),
            gen_uni_op('trunc', 'floor', simd_type, simd_type),
            gen_uni_op('ceil', 'ceil', simd_type, simd_type),
            gen_uni_op('abs', 'abs', simd_type, simd_type),
            gen_uni_op('sqrt', 'sqrt', simd_type, simd_type),
            gen_uni_op('rcp_rh', 'rcp_rh', simd_type, simd_type),
            gen_uni_op('rsqrt_e', 'rsqrt_e', simd_type, simd_type),
            gen_uni_op('rsqrt_rh', 'rsqrt_rh', simd_type, simd_type),
            gen_uni_op('neg', 'neg', simd_type, simd_type),
            gen_uni_op('isnan', 'isnan', simd_type, 'mask_'+simd_type),
            gen_uni_op('isnan2', 'isnan2', simd_type, 'mask_'+simd_type),
        ])+"\n"
    if 'int' in base_type and 'uint' not in base_type:
        binops+="\n".join([
            gen_bin_op('cmp_eq', 'cmp_eq', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_lt', 'cmp_lt', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_le', 'cmp_le', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_neq', 'cmp_neq', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_gt', 'cmp_gt', simd_type, 'mask_'+simd_type),
            gen_bin_op('cmp_ge', 'cmp_ge', simd_type, 'mask_'+simd_type),
            gen_uni_op('abs', 'abs', simd_type, 'u'+simd_type),
            gen_uni_op('neg', 'neg', simd_type, simd_type)
        ])+"\n"
    if 'int' in base_type:
        binops+="\n".join([
            gen_bin_op('add_sat', 'add_sat', simd_type, simd_type) if type_size<=16 else '',
            gen_bin_op('sub_sat', 'sub_sat', simd_type, simd_type) if type_size<=16 else '',
            gen_bin_op('mul_lo', 'mul_lo', simd_type, simd_type) if type_size>=16 and type_size<=32 else '',
            gen_bin_op('mul_hi', 'mul_hi', simd_type, simd_type) if type_size>=16 and type_size<=32 else '',
            gen_bin_op('mull', 'mull', simd_type, simd_type) if type_size>=16 and type_size<=32 else '',
            gen_bin_op('avg', 'avg', simd_type, simd_type) if type_size<=32 else '',
            gen_bin_op('avg_trunc', 'avg_trunc', simd_type, simd_type) if type_size<=32 else '',
            gen_bin_op('mull', 'mull', simd_type, simd_type) if type_size<=32 else '',
            gen_bin_op('reduce_and', 'reduce_and', simd_type, size_type),
            gen_bin_op('reduce_or', 'reduce_or', simd_type, size_type),
            gen_bin_op('shift_l', 'shift_l', simd_type, size_type),
            gen_bin_op('shift_r', 'shift_r', simd_type, size_type),
        ])+"\n"
    return binops

def gen_simd_type(base_type, size_type, size, do_ops=True):
    simd_type=size_type+'x'+str(size)
    args=', '.join(f'x{i}' for i in range(size))
    _ops=ops(base_type, simd_type, size_type) if do_ops else ""
    output(f"""
##############################################
### BEGIN {base_type}, {size_type}, {size} ###
##############################################
    
type {simd_type} {{.header: simd, importcpp: "{size_type}<{size}>".}} = object
type mask_{simd_type} {{.header: simd, importcpp: "mask_{size_type}<{size}>".}} = object

proc Vector({args}: {size_type}): {simd_type} {{.header: simd, importcpp: "make_{base_type}<{size_type}<{size}>>(@)".}}

{_ops}
proc extract*(k: Natural, x: {simd_type}): {size_type}  {{.header: simd, importcpp: "extract<#, {size}>(@)"}}
proc `[]`*(x: {simd_type}, i: static[Natural]): {size_type} = extract(i, x)

############################################
### END {base_type}, {size_type}, {size} ###
############################################

    """)

all_output=""
def output(s):
    global all_output
    all_output+=s

gen_simd_type("uint", "uint8", 16)
gen_simd_type("int", "int8", 16)
gen_simd_type("uint", "uint16", 8)
gen_simd_type("int", "int16", 8)
gen_simd_type("uint", "uint32", 4)
gen_simd_type("int", "int32", 4)
gen_simd_type("uint", "uint64", 2)
gen_simd_type("int", "int64", 2)
gen_simd_type("float", "float32", 4)
gen_simd_type("float", "float64", 2)
gen_simd_type("uint", "uint8", 32)
gen_simd_type("int", "int8", 32)
gen_simd_type("uint", "uint16", 16)
gen_simd_type("int", "int16", 16)
gen_simd_type("uint", "uint32", 8)
gen_simd_type("int", "int32", 8)
gen_simd_type("uint", "uint64", 4)
gen_simd_type("int", "int64", 4)
gen_simd_type("float", "float32", 8)
gen_simd_type("float", "float64", 4)
gen_simd_type("uint", "uint8", 64)
gen_simd_type("int", "int8", 64)
gen_simd_type("uint", "uint16", 32)
gen_simd_type("int", "int16", 32)
gen_simd_type("uint", "uint32", 16)
gen_simd_type("int", "int32", 16)
gen_simd_type("uint", "uint64", 8)
gen_simd_type("int", "int64", 8)
gen_simd_type("float", "float32", 16)
gen_simd_type("float", "float64", 8)

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

const
  simd = "<simdpp/simd.h>"
""")
    for l in dedup([i for i in all_output.split('\n') if i.strip()]):
        f.write(l)
        f.write('\n')