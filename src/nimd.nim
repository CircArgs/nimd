{.localPassc: "-I/home/nick/Projects/nimd/libsimdpp".}
{.emit: "using namespace simdpp;".}

const
  simd = "<simdpp/simd.h>"
##############################################
### BEGIN uint, uint8, 16 ###
##############################################
type uint8x16 {.header: simd, importcpp: "uint8<16>".} = object
type mask_uint8x16 {.header: simd, importcpp: "mask_uint8<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint8): uint8x16 {.header: simd, importcpp: "make_uint<uint8<16>>(@)".}
proc `+`*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint8x16): uint8  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint8x16): uint8  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint8x16): uint8  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint8x16): uint8  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint8x16): uint8  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint8x16): uint8  {.header: simd, importcpp: "reduce_max(@)"}
proc add_sat*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub_sat(@)"}
proc avg*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc mull*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "mull(@)"}
proc reduce_and*(x, y: uint8x16): uint8  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint8x16): uint8  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint8x16): uint8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint8x16): uint8  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint8x16): uint8  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: uint8x16, i: static[Natural]): uint8 = extract(i, x)
############################################
### END uint, uint8, 16 ###
############################################
##############################################
### BEGIN int, int8, 16 ###
##############################################
type int8x16 {.header: simd, importcpp: "int8<16>".} = object
type mask_int8x16 {.header: simd, importcpp: "mask_int8<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int8): int8x16 {.header: simd, importcpp: "make_int<int8<16>>(@)".}
proc `+`*(x, y: int8x16): int8x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int8x16): int8x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int8x16): int8  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int8x16): int8  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int8x16): int8  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int8x16): int8  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int8x16): int8  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int8x16): int8  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int8x16): uint8x16  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int8x16): int8x16  {.header: simd, importcpp: "neg(@)"}
proc add_sat*(x, y: int8x16): int8x16  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: int8x16): int8x16  {.header: simd, importcpp: "sub_sat(@)"}
proc avg*(x, y: int8x16): int8x16  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int8x16): int8x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc mull*(x, y: int8x16): int8x16  {.header: simd, importcpp: "mull(@)"}
proc reduce_and*(x, y: int8x16): int8  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int8x16): int8  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int8x16): int8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int8x16): int8  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int8x16): int8  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: int8x16, i: static[Natural]): int8 = extract(i, x)
############################################
### END int, int8, 16 ###
############################################
##############################################
### BEGIN uint, uint16, 8 ###
##############################################
type uint16x8 {.header: simd, importcpp: "uint16<8>".} = object
type mask_uint16x8 {.header: simd, importcpp: "mask_uint16<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: uint16): uint16x8 {.header: simd, importcpp: "make_uint<uint16<8>>(@)".}
proc `+`*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint16x8): uint16  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint16x8): uint16  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint16x8): uint16  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint16x8): uint16  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint16x8): uint16  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint16x8): uint16  {.header: simd, importcpp: "reduce_max(@)"}
proc add_sat*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: uint16x8): uint16  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint16x8): uint16  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint16x8): uint16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint16x8): uint16  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint16x8): uint16  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: uint16x8, i: static[Natural]): uint16 = extract(i, x)
############################################
### END uint, uint16, 8 ###
############################################
##############################################
### BEGIN int, int16, 8 ###
##############################################
type int16x8 {.header: simd, importcpp: "int16<8>".} = object
type mask_int16x8 {.header: simd, importcpp: "mask_int16<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: int16): int16x8 {.header: simd, importcpp: "make_int<int16<8>>(@)".}
proc `+`*(x, y: int16x8): int16x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int16x8): int16x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int16x8): int16  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int16x8): int16  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int16x8): int16  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int16x8): int16  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int16x8): int16  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int16x8): int16  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int16x8): uint16x8  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int16x8): int16x8  {.header: simd, importcpp: "neg(@)"}
proc add_sat*(x, y: int16x8): int16x8  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: int16x8): int16x8  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x, y: int16x8): int16x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: int16x8): int16x8  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: int16x8): int16x8  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: int16x8): int16x8  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int16x8): int16x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: int16x8): int16  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int16x8): int16  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int16x8): int16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int16x8): int16  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int16x8): int16  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: int16x8, i: static[Natural]): int16 = extract(i, x)
############################################
### END int, int16, 8 ###
############################################
##############################################
### BEGIN uint, uint32, 4 ###
##############################################
type uint32x4 {.header: simd, importcpp: "uint32<4>".} = object
type mask_uint32x4 {.header: simd, importcpp: "mask_uint32<4>".} = object
proc Vector(x0, x1, x2, x3: uint32): uint32x4 {.header: simd, importcpp: "make_uint<uint32<4>>(@)".}
proc `+`*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint32x4): uint32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint32x4): uint32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint32x4): uint32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint32x4): uint32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint32x4): uint32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint32x4): uint32  {.header: simd, importcpp: "reduce_max(@)"}
proc mul_lo*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: uint32x4): uint32  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint32x4): uint32  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint32x4): uint32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint32x4): uint32  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint32x4): uint32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint32x4, i: static[Natural]): uint32 = extract(i, x)
############################################
### END uint, uint32, 4 ###
############################################
##############################################
### BEGIN int, int32, 4 ###
##############################################
type int32x4 {.header: simd, importcpp: "int32<4>".} = object
type mask_int32x4 {.header: simd, importcpp: "mask_int32<4>".} = object
proc Vector(x0, x1, x2, x3: int32): int32x4 {.header: simd, importcpp: "make_int<int32<4>>(@)".}
proc `+`*(x, y: int32x4): int32x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int32x4): int32x4  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int32x4): int32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int32x4): int32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int32x4): int32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int32x4): int32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int32x4): int32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int32x4): int32  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int32x4): uint32x4  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int32x4): int32x4  {.header: simd, importcpp: "neg(@)"}
proc mul_lo*(x, y: int32x4): int32x4  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: int32x4): int32x4  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: int32x4): int32x4  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: int32x4): int32x4  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int32x4): int32x4  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: int32x4): int32  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int32x4): int32  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int32x4): int32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int32x4): int32  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int32x4): int32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int32x4, i: static[Natural]): int32 = extract(i, x)
############################################
### END int, int32, 4 ###
############################################
##############################################
### BEGIN uint, uint64, 2 ###
##############################################
type uint64x2 {.header: simd, importcpp: "uint64<2>".} = object
type mask_uint64x2 {.header: simd, importcpp: "mask_uint64<2>".} = object
proc Vector(x0, x1: uint64): uint64x2 {.header: simd, importcpp: "make_uint<uint64<2>>(@)".}
proc `+`*(x, y: uint64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint64x2): uint64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint64x2): uint64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint64x2): uint64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint64x2): uint64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint64x2): uint64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint64x2): uint64  {.header: simd, importcpp: "reduce_max(@)"}
proc reduce_and*(x, y: uint64x2): uint64  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint64x2): uint64  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint64x2): uint64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint64x2): uint64  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint64x2): uint64  {.header: simd, importcpp: "extract<#, 2>(@)"}
proc `[]`*(x: uint64x2, i: static[Natural]): uint64 = extract(i, x)
############################################
### END uint, uint64, 2 ###
############################################
##############################################
### BEGIN int, int64, 2 ###
##############################################
type int64x2 {.header: simd, importcpp: "int64<2>".} = object
type mask_int64x2 {.header: simd, importcpp: "mask_int64<2>".} = object
proc Vector(x0, x1: int64): int64x2 {.header: simd, importcpp: "make_int<int64<2>>(@)".}
proc `+`*(x, y: int64x2): int64x2  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int64x2): int64x2  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int64x2): int64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int64x2): int64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int64x2): int64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int64x2): int64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int64x2): int64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int64x2): int64  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int64x2): uint64x2  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int64x2): int64x2  {.header: simd, importcpp: "neg(@)"}
proc reduce_and*(x, y: int64x2): int64  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int64x2): int64  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int64x2): int64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int64x2): int64  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int64x2): int64  {.header: simd, importcpp: "extract<#, 2>(@)"}
proc `[]`*(x: int64x2, i: static[Natural]): int64 = extract(i, x)
############################################
### END int, int64, 2 ###
############################################
##############################################
### BEGIN float, float32, 4 ###
##############################################
type float32x4 {.header: simd, importcpp: "float32<4>".} = object
type mask_float32x4 {.header: simd, importcpp: "mask_float32<4>".} = object
proc Vector(x0, x1, x2, x3: float32): float32x4 {.header: simd, importcpp: "make_float<float32<4>>(@)".}
proc `+`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: float32x4): float32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: float32x4): float32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: float32x4): float32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: float32x4): float32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: float32x4): float32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: float32x4): float32  {.header: simd, importcpp: "reduce_max(@)"}
proc `*`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x, y: float32x4): float32x4  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x, y: float32x4): float32x4  {.header: simd, importcpp: "fmsub(@)"}
proc cmp_eq*(x, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc sign*(x: float32x4): float32x4  {.header: simd, importcpp: "sign(@)"}
proc round*(x: float32x4): float32x4  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float32x4): float32x4  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float32x4): float32x4  {.header: simd, importcpp: "ceil(@)"}
proc abs*(x: float32x4): float32x4  {.header: simd, importcpp: "abs(@)"}
proc sqrt*(x: float32x4): float32x4  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_rh*(x: float32x4): float32x4  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float32x4): float32x4  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float32x4): float32x4  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc neg*(x: float32x4): float32x4  {.header: simd, importcpp: "neg(@)"}
proc isnan*(x: float32x4): mask_float32x4  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float32x4): mask_float32x4  {.header: simd, importcpp: "isnan2(@)"}
proc extract*(k: Natural, x: float32x4): float32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float32x4, i: static[Natural]): float32 = extract(i, x)
############################################
### END float, float32, 4 ###
############################################
##############################################
### BEGIN float, float64, 2 ###
##############################################
type float64x2 {.header: simd, importcpp: "float64<2>".} = object
type mask_float64x2 {.header: simd, importcpp: "mask_float64<2>".} = object
proc Vector(x0, x1: float64): float64x2 {.header: simd, importcpp: "make_float<float64<2>>(@)".}
proc `+`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: float64x2): float64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: float64x2): float64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: float64x2): float64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: float64x2): float64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: float64x2): float64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: float64x2): float64  {.header: simd, importcpp: "reduce_max(@)"}
proc `*`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x, y: float64x2): float64x2  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x, y: float64x2): float64x2  {.header: simd, importcpp: "fmsub(@)"}
proc cmp_eq*(x, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc sign*(x: float64x2): float64x2  {.header: simd, importcpp: "sign(@)"}
proc round*(x: float64x2): float64x2  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float64x2): float64x2  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float64x2): float64x2  {.header: simd, importcpp: "ceil(@)"}
proc abs*(x: float64x2): float64x2  {.header: simd, importcpp: "abs(@)"}
proc sqrt*(x: float64x2): float64x2  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_rh*(x: float64x2): float64x2  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float64x2): float64x2  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float64x2): float64x2  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc neg*(x: float64x2): float64x2  {.header: simd, importcpp: "neg(@)"}
proc isnan*(x: float64x2): mask_float64x2  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float64x2): mask_float64x2  {.header: simd, importcpp: "isnan2(@)"}
proc extract*(k: Natural, x: float64x2): float64  {.header: simd, importcpp: "extract<#, 2>(@)"}
proc `[]`*(x: float64x2, i: static[Natural]): float64 = extract(i, x)
############################################
### END float, float64, 2 ###
############################################
##############################################
### BEGIN uint, uint8, 32 ###
##############################################
type uint8x32 {.header: simd, importcpp: "uint8<32>".} = object
type mask_uint8x32 {.header: simd, importcpp: "mask_uint8<32>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: uint8): uint8x32 {.header: simd, importcpp: "make_uint<uint8<32>>(@)".}
proc `+`*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint8x32): uint8  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint8x32): uint8  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint8x32): uint8  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint8x32): uint8  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint8x32): uint8  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint8x32): uint8  {.header: simd, importcpp: "reduce_max(@)"}
proc add_sat*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub_sat(@)"}
proc avg*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc mull*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "mull(@)"}
proc reduce_and*(x, y: uint8x32): uint8  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint8x32): uint8  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint8x32): uint8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint8x32): uint8  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint8x32): uint8  {.header: simd, importcpp: "extract<#, 32>(@)"}
proc `[]`*(x: uint8x32, i: static[Natural]): uint8 = extract(i, x)
############################################
### END uint, uint8, 32 ###
############################################
##############################################
### BEGIN int, int8, 32 ###
##############################################
type int8x32 {.header: simd, importcpp: "int8<32>".} = object
type mask_int8x32 {.header: simd, importcpp: "mask_int8<32>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: int8): int8x32 {.header: simd, importcpp: "make_int<int8<32>>(@)".}
proc `+`*(x, y: int8x32): int8x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int8x32): int8x32  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int8x32): int8  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int8x32): int8  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int8x32): int8  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int8x32): int8  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int8x32): int8  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int8x32): int8  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int8x32): uint8x32  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int8x32): int8x32  {.header: simd, importcpp: "neg(@)"}
proc add_sat*(x, y: int8x32): int8x32  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: int8x32): int8x32  {.header: simd, importcpp: "sub_sat(@)"}
proc avg*(x, y: int8x32): int8x32  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int8x32): int8x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc mull*(x, y: int8x32): int8x32  {.header: simd, importcpp: "mull(@)"}
proc reduce_and*(x, y: int8x32): int8  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int8x32): int8  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int8x32): int8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int8x32): int8  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int8x32): int8  {.header: simd, importcpp: "extract<#, 32>(@)"}
proc `[]`*(x: int8x32, i: static[Natural]): int8 = extract(i, x)
############################################
### END int, int8, 32 ###
############################################
##############################################
### BEGIN uint, uint16, 16 ###
##############################################
type uint16x16 {.header: simd, importcpp: "uint16<16>".} = object
type mask_uint16x16 {.header: simd, importcpp: "mask_uint16<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint16): uint16x16 {.header: simd, importcpp: "make_uint<uint16<16>>(@)".}
proc `+`*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint16x16): uint16  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint16x16): uint16  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint16x16): uint16  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint16x16): uint16  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint16x16): uint16  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint16x16): uint16  {.header: simd, importcpp: "reduce_max(@)"}
proc add_sat*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: uint16x16): uint16  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint16x16): uint16  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint16x16): uint16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint16x16): uint16  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint16x16): uint16  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: uint16x16, i: static[Natural]): uint16 = extract(i, x)
############################################
### END uint, uint16, 16 ###
############################################
##############################################
### BEGIN int, int16, 16 ###
##############################################
type int16x16 {.header: simd, importcpp: "int16<16>".} = object
type mask_int16x16 {.header: simd, importcpp: "mask_int16<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int16): int16x16 {.header: simd, importcpp: "make_int<int16<16>>(@)".}
proc `+`*(x, y: int16x16): int16x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int16x16): int16x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int16x16): int16  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int16x16): int16  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int16x16): int16  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int16x16): int16  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int16x16): int16  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int16x16): int16  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int16x16): uint16x16  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int16x16): int16x16  {.header: simd, importcpp: "neg(@)"}
proc add_sat*(x, y: int16x16): int16x16  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: int16x16): int16x16  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x, y: int16x16): int16x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: int16x16): int16x16  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: int16x16): int16x16  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: int16x16): int16x16  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int16x16): int16x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: int16x16): int16  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int16x16): int16  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int16x16): int16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int16x16): int16  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int16x16): int16  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: int16x16, i: static[Natural]): int16 = extract(i, x)
############################################
### END int, int16, 16 ###
############################################
##############################################
### BEGIN uint, uint32, 8 ###
##############################################
type uint32x8 {.header: simd, importcpp: "uint32<8>".} = object
type mask_uint32x8 {.header: simd, importcpp: "mask_uint32<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: uint32): uint32x8 {.header: simd, importcpp: "make_uint<uint32<8>>(@)".}
proc `+`*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint32x8): uint32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint32x8): uint32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint32x8): uint32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint32x8): uint32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint32x8): uint32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint32x8): uint32  {.header: simd, importcpp: "reduce_max(@)"}
proc mul_lo*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: uint32x8): uint32  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint32x8): uint32  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint32x8): uint32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint32x8): uint32  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint32x8): uint32  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: uint32x8, i: static[Natural]): uint32 = extract(i, x)
############################################
### END uint, uint32, 8 ###
############################################
##############################################
### BEGIN int, int32, 8 ###
##############################################
type int32x8 {.header: simd, importcpp: "int32<8>".} = object
type mask_int32x8 {.header: simd, importcpp: "mask_int32<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: int32): int32x8 {.header: simd, importcpp: "make_int<int32<8>>(@)".}
proc `+`*(x, y: int32x8): int32x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int32x8): int32x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int32x8): int32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int32x8): int32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int32x8): int32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int32x8): int32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int32x8): int32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int32x8): int32  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int32x8): uint32x8  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int32x8): int32x8  {.header: simd, importcpp: "neg(@)"}
proc mul_lo*(x, y: int32x8): int32x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: int32x8): int32x8  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: int32x8): int32x8  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: int32x8): int32x8  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int32x8): int32x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: int32x8): int32  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int32x8): int32  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int32x8): int32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int32x8): int32  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int32x8): int32  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: int32x8, i: static[Natural]): int32 = extract(i, x)
############################################
### END int, int32, 8 ###
############################################
##############################################
### BEGIN uint, uint64, 4 ###
##############################################
type uint64x4 {.header: simd, importcpp: "uint64<4>".} = object
type mask_uint64x4 {.header: simd, importcpp: "mask_uint64<4>".} = object
proc Vector(x0, x1, x2, x3: uint64): uint64x4 {.header: simd, importcpp: "make_uint<uint64<4>>(@)".}
proc `+`*(x, y: uint64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint64x4): uint64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint64x4): uint64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint64x4): uint64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint64x4): uint64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint64x4): uint64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint64x4): uint64  {.header: simd, importcpp: "reduce_max(@)"}
proc reduce_and*(x, y: uint64x4): uint64  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint64x4): uint64  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint64x4): uint64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint64x4): uint64  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint64x4): uint64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint64x4, i: static[Natural]): uint64 = extract(i, x)
############################################
### END uint, uint64, 4 ###
############################################
##############################################
### BEGIN int, int64, 4 ###
##############################################
type int64x4 {.header: simd, importcpp: "int64<4>".} = object
type mask_int64x4 {.header: simd, importcpp: "mask_int64<4>".} = object
proc Vector(x0, x1, x2, x3: int64): int64x4 {.header: simd, importcpp: "make_int<int64<4>>(@)".}
proc `+`*(x, y: int64x4): int64x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int64x4): int64x4  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int64x4): int64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int64x4): int64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int64x4): int64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int64x4): int64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int64x4): int64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int64x4): int64  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int64x4): uint64x4  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int64x4): int64x4  {.header: simd, importcpp: "neg(@)"}
proc reduce_and*(x, y: int64x4): int64  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int64x4): int64  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int64x4): int64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int64x4): int64  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int64x4): int64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int64x4, i: static[Natural]): int64 = extract(i, x)
############################################
### END int, int64, 4 ###
############################################
##############################################
### BEGIN float, float32, 8 ###
##############################################
type float32x8 {.header: simd, importcpp: "float32<8>".} = object
type mask_float32x8 {.header: simd, importcpp: "mask_float32<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: float32): float32x8 {.header: simd, importcpp: "make_float<float32<8>>(@)".}
proc `+`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: float32x8): float32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: float32x8): float32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: float32x8): float32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: float32x8): float32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: float32x8): float32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: float32x8): float32  {.header: simd, importcpp: "reduce_max(@)"}
proc `*`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x, y: float32x8): float32x8  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x, y: float32x8): float32x8  {.header: simd, importcpp: "fmsub(@)"}
proc cmp_eq*(x, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc sign*(x: float32x8): float32x8  {.header: simd, importcpp: "sign(@)"}
proc round*(x: float32x8): float32x8  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float32x8): float32x8  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float32x8): float32x8  {.header: simd, importcpp: "ceil(@)"}
proc abs*(x: float32x8): float32x8  {.header: simd, importcpp: "abs(@)"}
proc sqrt*(x: float32x8): float32x8  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_rh*(x: float32x8): float32x8  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float32x8): float32x8  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float32x8): float32x8  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc neg*(x: float32x8): float32x8  {.header: simd, importcpp: "neg(@)"}
proc isnan*(x: float32x8): mask_float32x8  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float32x8): mask_float32x8  {.header: simd, importcpp: "isnan2(@)"}
proc extract*(k: Natural, x: float32x8): float32  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: float32x8, i: static[Natural]): float32 = extract(i, x)
############################################
### END float, float32, 8 ###
############################################
##############################################
### BEGIN float, float64, 4 ###
##############################################
type float64x4 {.header: simd, importcpp: "float64<4>".} = object
type mask_float64x4 {.header: simd, importcpp: "mask_float64<4>".} = object
proc Vector(x0, x1, x2, x3: float64): float64x4 {.header: simd, importcpp: "make_float<float64<4>>(@)".}
proc `+`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: float64x4): float64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: float64x4): float64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: float64x4): float64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: float64x4): float64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: float64x4): float64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: float64x4): float64  {.header: simd, importcpp: "reduce_max(@)"}
proc `*`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x, y: float64x4): float64x4  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x, y: float64x4): float64x4  {.header: simd, importcpp: "fmsub(@)"}
proc cmp_eq*(x, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc sign*(x: float64x4): float64x4  {.header: simd, importcpp: "sign(@)"}
proc round*(x: float64x4): float64x4  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float64x4): float64x4  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float64x4): float64x4  {.header: simd, importcpp: "ceil(@)"}
proc abs*(x: float64x4): float64x4  {.header: simd, importcpp: "abs(@)"}
proc sqrt*(x: float64x4): float64x4  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_rh*(x: float64x4): float64x4  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float64x4): float64x4  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float64x4): float64x4  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc neg*(x: float64x4): float64x4  {.header: simd, importcpp: "neg(@)"}
proc isnan*(x: float64x4): mask_float64x4  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float64x4): mask_float64x4  {.header: simd, importcpp: "isnan2(@)"}
proc extract*(k: Natural, x: float64x4): float64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float64x4, i: static[Natural]): float64 = extract(i, x)
############################################
### END float, float64, 4 ###
############################################
##############################################
### BEGIN uint, uint8, 64 ###
##############################################
type uint8x64 {.header: simd, importcpp: "uint8<64>".} = object
type mask_uint8x64 {.header: simd, importcpp: "mask_uint8<64>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63: uint8): uint8x64 {.header: simd, importcpp: "make_uint<uint8<64>>(@)".}
proc `+`*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint8x64): uint8  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint8x64): uint8  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint8x64): uint8  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint8x64): uint8  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint8x64): uint8  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint8x64): uint8  {.header: simd, importcpp: "reduce_max(@)"}
proc add_sat*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub_sat(@)"}
proc avg*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "avg_trunc(@)"}
proc mull*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "mull(@)"}
proc reduce_and*(x, y: uint8x64): uint8  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint8x64): uint8  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint8x64): uint8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint8x64): uint8  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint8x64): uint8  {.header: simd, importcpp: "extract<#, 64>(@)"}
proc `[]`*(x: uint8x64, i: static[Natural]): uint8 = extract(i, x)
############################################
### END uint, uint8, 64 ###
############################################
##############################################
### BEGIN int, int8, 64 ###
##############################################
type int8x64 {.header: simd, importcpp: "int8<64>".} = object
type mask_int8x64 {.header: simd, importcpp: "mask_int8<64>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63: int8): int8x64 {.header: simd, importcpp: "make_int<int8<64>>(@)".}
proc `+`*(x, y: int8x64): int8x64  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int8x64): int8x64  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int8x64): int8  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int8x64): int8  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int8x64): int8  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int8x64): int8  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int8x64): int8  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int8x64): int8  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int8x64): uint8x64  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int8x64): int8x64  {.header: simd, importcpp: "neg(@)"}
proc add_sat*(x, y: int8x64): int8x64  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: int8x64): int8x64  {.header: simd, importcpp: "sub_sat(@)"}
proc avg*(x, y: int8x64): int8x64  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int8x64): int8x64  {.header: simd, importcpp: "avg_trunc(@)"}
proc mull*(x, y: int8x64): int8x64  {.header: simd, importcpp: "mull(@)"}
proc reduce_and*(x, y: int8x64): int8  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int8x64): int8  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int8x64): int8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int8x64): int8  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int8x64): int8  {.header: simd, importcpp: "extract<#, 64>(@)"}
proc `[]`*(x: int8x64, i: static[Natural]): int8 = extract(i, x)
############################################
### END int, int8, 64 ###
############################################
##############################################
### BEGIN uint, uint16, 32 ###
##############################################
type uint16x32 {.header: simd, importcpp: "uint16<32>".} = object
type mask_uint16x32 {.header: simd, importcpp: "mask_uint16<32>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: uint16): uint16x32 {.header: simd, importcpp: "make_uint<uint16<32>>(@)".}
proc `+`*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint16x32): uint16  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint16x32): uint16  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint16x32): uint16  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint16x32): uint16  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint16x32): uint16  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint16x32): uint16  {.header: simd, importcpp: "reduce_max(@)"}
proc add_sat*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: uint16x32): uint16  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint16x32): uint16  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint16x32): uint16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint16x32): uint16  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint16x32): uint16  {.header: simd, importcpp: "extract<#, 32>(@)"}
proc `[]`*(x: uint16x32, i: static[Natural]): uint16 = extract(i, x)
############################################
### END uint, uint16, 32 ###
############################################
##############################################
### BEGIN int, int16, 32 ###
##############################################
type int16x32 {.header: simd, importcpp: "int16<32>".} = object
type mask_int16x32 {.header: simd, importcpp: "mask_int16<32>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: int16): int16x32 {.header: simd, importcpp: "make_int<int16<32>>(@)".}
proc `+`*(x, y: int16x32): int16x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int16x32): int16x32  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int16x32): int16  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int16x32): int16  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int16x32): int16  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int16x32): int16  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int16x32): int16  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int16x32): int16  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int16x32): uint16x32  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int16x32): int16x32  {.header: simd, importcpp: "neg(@)"}
proc add_sat*(x, y: int16x32): int16x32  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x, y: int16x32): int16x32  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x, y: int16x32): int16x32  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: int16x32): int16x32  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: int16x32): int16x32  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: int16x32): int16x32  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int16x32): int16x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: int16x32): int16  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int16x32): int16  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int16x32): int16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int16x32): int16  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int16x32): int16  {.header: simd, importcpp: "extract<#, 32>(@)"}
proc `[]`*(x: int16x32, i: static[Natural]): int16 = extract(i, x)
############################################
### END int, int16, 32 ###
############################################
##############################################
### BEGIN uint, uint32, 16 ###
##############################################
type uint32x16 {.header: simd, importcpp: "uint32<16>".} = object
type mask_uint32x16 {.header: simd, importcpp: "mask_uint32<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint32): uint32x16 {.header: simd, importcpp: "make_uint<uint32<16>>(@)".}
proc `+`*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint32x16): uint32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint32x16): uint32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint32x16): uint32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint32x16): uint32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint32x16): uint32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint32x16): uint32  {.header: simd, importcpp: "reduce_max(@)"}
proc mul_lo*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: uint32x16): uint32  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint32x16): uint32  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint32x16): uint32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint32x16): uint32  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint32x16): uint32  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: uint32x16, i: static[Natural]): uint32 = extract(i, x)
############################################
### END uint, uint32, 16 ###
############################################
##############################################
### BEGIN int, int32, 16 ###
##############################################
type int32x16 {.header: simd, importcpp: "int32<16>".} = object
type mask_int32x16 {.header: simd, importcpp: "mask_int32<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int32): int32x16 {.header: simd, importcpp: "make_int<int32<16>>(@)".}
proc `+`*(x, y: int32x16): int32x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int32x16): int32x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int32x16): int32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int32x16): int32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int32x16): int32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int32x16): int32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int32x16): int32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int32x16): int32  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int32x16): uint32x16  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int32x16): int32x16  {.header: simd, importcpp: "neg(@)"}
proc mul_lo*(x, y: int32x16): int32x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x, y: int32x16): int32x16  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x, y: int32x16): int32x16  {.header: simd, importcpp: "mull(@)"}
proc avg*(x, y: int32x16): int32x16  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x, y: int32x16): int32x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc reduce_and*(x, y: int32x16): int32  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int32x16): int32  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int32x16): int32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int32x16): int32  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int32x16): int32  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: int32x16, i: static[Natural]): int32 = extract(i, x)
############################################
### END int, int32, 16 ###
############################################
##############################################
### BEGIN uint, uint64, 8 ###
##############################################
type uint64x8 {.header: simd, importcpp: "uint64<8>".} = object
type mask_uint64x8 {.header: simd, importcpp: "mask_uint64<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: uint64): uint64x8 {.header: simd, importcpp: "make_uint<uint64<8>>(@)".}
proc `+`*(x, y: uint64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: uint64x8): uint64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: uint64x8): uint64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: uint64x8): uint64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: uint64x8): uint64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: uint64x8): uint64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: uint64x8): uint64  {.header: simd, importcpp: "reduce_max(@)"}
proc reduce_and*(x, y: uint64x8): uint64  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: uint64x8): uint64  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: uint64x8): uint64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: uint64x8): uint64  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: uint64x8): uint64  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: uint64x8, i: static[Natural]): uint64 = extract(i, x)
############################################
### END uint, uint64, 8 ###
############################################
##############################################
### BEGIN int, int64, 8 ###
##############################################
type int64x8 {.header: simd, importcpp: "int64<8>".} = object
type mask_int64x8 {.header: simd, importcpp: "mask_int64<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: int64): int64x8 {.header: simd, importcpp: "make_int<int64<8>>(@)".}
proc `+`*(x, y: int64x8): int64x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int64x8): int64x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: int64x8): int64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: int64x8): int64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: int64x8): int64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: int64x8): int64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: int64x8): int64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: int64x8): int64  {.header: simd, importcpp: "reduce_max(@)"}
proc cmp_eq*(x, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int64x8): uint64x8  {.header: simd, importcpp: "abs(@)"}
proc neg*(x: int64x8): int64x8  {.header: simd, importcpp: "neg(@)"}
proc reduce_and*(x, y: int64x8): int64  {.header: simd, importcpp: "reduce_and(@)"}
proc reduce_or*(x, y: int64x8): int64  {.header: simd, importcpp: "reduce_or(@)"}
proc shift_l*(x, y: int64x8): int64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x, y: int64x8): int64  {.header: simd, importcpp: "shift_r(@)"}
proc extract*(k: Natural, x: int64x8): int64  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: int64x8, i: static[Natural]): int64 = extract(i, x)
############################################
### END int, int64, 8 ###
############################################
##############################################
### BEGIN float, float32, 16 ###
##############################################
type float32x16 {.header: simd, importcpp: "float32<16>".} = object
type mask_float32x16 {.header: simd, importcpp: "mask_float32<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: float32): float32x16 {.header: simd, importcpp: "make_float<float32<16>>(@)".}
proc `+`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: float32x16): float32  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: float32x16): float32  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: float32x16): float32  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: float32x16): float32  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: float32x16): float32  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: float32x16): float32  {.header: simd, importcpp: "reduce_max(@)"}
proc `*`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x, y: float32x16): float32x16  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x, y: float32x16): float32x16  {.header: simd, importcpp: "fmsub(@)"}
proc cmp_eq*(x, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc sign*(x: float32x16): float32x16  {.header: simd, importcpp: "sign(@)"}
proc round*(x: float32x16): float32x16  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float32x16): float32x16  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float32x16): float32x16  {.header: simd, importcpp: "ceil(@)"}
proc abs*(x: float32x16): float32x16  {.header: simd, importcpp: "abs(@)"}
proc sqrt*(x: float32x16): float32x16  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_rh*(x: float32x16): float32x16  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float32x16): float32x16  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float32x16): float32x16  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc neg*(x: float32x16): float32x16  {.header: simd, importcpp: "neg(@)"}
proc isnan*(x: float32x16): mask_float32x16  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float32x16): mask_float32x16  {.header: simd, importcpp: "isnan2(@)"}
proc extract*(k: Natural, x: float32x16): float32  {.header: simd, importcpp: "extract<#, 16>(@)"}
proc `[]`*(x: float32x16, i: static[Natural]): float32 = extract(i, x)
############################################
### END float, float32, 16 ###
############################################
##############################################
### BEGIN float, float64, 8 ###
##############################################
type float64x8 {.header: simd, importcpp: "float64<8>".} = object
type mask_float64x8 {.header: simd, importcpp: "mask_float64<8>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: float64): float64x8 {.header: simd, importcpp: "make_float<float64<8>>(@)".}
proc `+`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "sub(@)"}
proc min*(x, y: float64x8): float64  {.header: simd, importcpp: "min(@)"}
proc max*(x, y: float64x8): float64  {.header: simd, importcpp: "max(@)"}
proc reduce_add*(x, y: float64x8): float64  {.header: simd, importcpp: "reduce_add(@)"}
proc reduce_min*(x, y: float64x8): float64  {.header: simd, importcpp: "reduce_min(@)"}
proc reduce_mul*(x, y: float64x8): float64  {.header: simd, importcpp: "reduce_mul(@)"}
proc reduce_max*(x, y: float64x8): float64  {.header: simd, importcpp: "reduce_max(@)"}
proc `*`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x, y: float64x8): float64x8  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x, y: float64x8): float64x8  {.header: simd, importcpp: "fmsub(@)"}
proc cmp_eq*(x, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_lt*(x, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_le*(x, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_neq*(x, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_gt*(x, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_ge*(x, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc sign*(x: float64x8): float64x8  {.header: simd, importcpp: "sign(@)"}
proc round*(x: float64x8): float64x8  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float64x8): float64x8  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float64x8): float64x8  {.header: simd, importcpp: "ceil(@)"}
proc abs*(x: float64x8): float64x8  {.header: simd, importcpp: "abs(@)"}
proc sqrt*(x: float64x8): float64x8  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_rh*(x: float64x8): float64x8  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float64x8): float64x8  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float64x8): float64x8  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc neg*(x: float64x8): float64x8  {.header: simd, importcpp: "neg(@)"}
proc isnan*(x: float64x8): mask_float64x8  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float64x8): mask_float64x8  {.header: simd, importcpp: "isnan2(@)"}
proc extract*(k: Natural, x: float64x8): float64  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: float64x8, i: static[Natural]): float64 = extract(i, x)
############################################
### END float, float64, 8 ###
############################################
