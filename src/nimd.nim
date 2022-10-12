{.localPassc: "-I/home/nick/Projects/nimd/libsimdpp".}
{.emit: "using namespace simdpp;".}

const simd = "<simdpp/simd.h>"
##############################################
### BEGIN uint, uint8, 16 ###
##############################################
type uint8x16 {.header: simd, importcpp: "uint8<16>".} = object
type mask_uint8x16 {.header: simd, importcpp: "mask_uint8<16>".} = object
proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint8): uint8x16 {.header: simd, importcpp: "make_uint<uint8<16>>(@)".}
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
proc extract*(k: Natural, x: float64x8): float64  {.header: simd, importcpp: "extract<#, 8>(@)"}
proc `[]`*(x: float64x8, i: static[Natural]): float64 = extract(i, x)
############################################
### END float, float64, 8 ###
############################################
proc add*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "add(@)"}
proc add*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "add(@)"}
proc sub*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "sub(@)"}
proc mul*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "mul(@)"}
proc `*`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "mul(@)"}
proc mul*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "mul(@)"}
proc `*`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "mul(@)"}
proc mul*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "mul(@)"}
proc `*`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "mul(@)"}
proc mul*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "mul(@)"}
proc `*`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "mul(@)"}
proc mul*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "mul(@)"}
proc `*`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "mul(@)"}
proc mul*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "mul(@)"}
proc `*`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "mul(@)"}
proc div*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "div(@)"}
proc div*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "div(@)"}
proc div*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "div(@)"}
proc div*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "div(@)"}
proc div*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "div(@)"}
proc div*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "div(@)"}
proc fmadd*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "fmadd(@)"}
proc fmadd*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "fmadd(@)"}
proc fmadd*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "fmadd(@)"}
proc fmadd*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "fmadd(@)"}
proc fmadd*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "fmadd(@)"}
proc fmadd*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "fmadd(@)"}
proc fmsub*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "fmsub(@)"}
proc fmsub*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "fmsub(@)"}
proc fmsub*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "fmsub(@)"}
proc fmsub*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "fmsub(@)"}
proc fmsub*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "fmsub(@)"}
proc fmsub*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "fmsub(@)"}
proc neg*(x: float32x8): float32x8  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: float32x16): float32x16  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: float32x4): float32x4  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: float64x8): float64x8  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: float64x2): float64x2  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: float64x4): float64x4  {.header: simd, importcpp: "neg(@)"}
proc round*(x: float32x8): float32x8  {.header: simd, importcpp: "round(@)"}
proc round*(x: float32x16): float32x16  {.header: simd, importcpp: "round(@)"}
proc round*(x: float32x4): float32x4  {.header: simd, importcpp: "round(@)"}
proc round*(x: float64x8): float64x8  {.header: simd, importcpp: "round(@)"}
proc round*(x: float64x2): float64x2  {.header: simd, importcpp: "round(@)"}
proc round*(x: float64x4): float64x4  {.header: simd, importcpp: "round(@)"}
proc trunc*(x: float32x8): float32x8  {.header: simd, importcpp: "trunc(@)"}
proc trunc*(x: float32x16): float32x16  {.header: simd, importcpp: "trunc(@)"}
proc trunc*(x: float32x4): float32x4  {.header: simd, importcpp: "trunc(@)"}
proc trunc*(x: float64x8): float64x8  {.header: simd, importcpp: "trunc(@)"}
proc trunc*(x: float64x2): float64x2  {.header: simd, importcpp: "trunc(@)"}
proc trunc*(x: float64x4): float64x4  {.header: simd, importcpp: "trunc(@)"}
proc floor*(x: float32x8): float32x8  {.header: simd, importcpp: "floor(@)"}
proc floor*(x: float32x16): float32x16  {.header: simd, importcpp: "floor(@)"}
proc floor*(x: float32x4): float32x4  {.header: simd, importcpp: "floor(@)"}
proc floor*(x: float64x8): float64x8  {.header: simd, importcpp: "floor(@)"}
proc floor*(x: float64x2): float64x2  {.header: simd, importcpp: "floor(@)"}
proc floor*(x: float64x4): float64x4  {.header: simd, importcpp: "floor(@)"}
proc ceil*(x: float32x8): float32x8  {.header: simd, importcpp: "ceil(@)"}
proc ceil*(x: float32x16): float32x16  {.header: simd, importcpp: "ceil(@)"}
proc ceil*(x: float32x4): float32x4  {.header: simd, importcpp: "ceil(@)"}
proc ceil*(x: float64x8): float64x8  {.header: simd, importcpp: "ceil(@)"}
proc ceil*(x: float64x2): float64x2  {.header: simd, importcpp: "ceil(@)"}
proc ceil*(x: float64x4): float64x4  {.header: simd, importcpp: "ceil(@)"}
proc cmp_eq*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_eq*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc `==`*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_eq(@)"}
proc cmp_neq*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_neq*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc `~=`*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_neq(@)"}
proc cmp_lt*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_gt*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_le*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_ge*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float32x8, y: float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float32x16, y: float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float32x4, y: float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float32x8, y: mask_float32x8): mask_float32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float32x16, y: mask_float32x16): mask_float32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float32x4, y: mask_float32x4): mask_float32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float64x8, y: float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float64x2, y: float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float64x4, y: float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float64x8, y: mask_float64x8): mask_float64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float64x2, y: mask_float64x2): mask_float64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: mask_float64x4, y: mask_float64x4): mask_float64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: float32x8): float32x8  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: float32x16): float32x16  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: float32x4): float32x4  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: float64x8): float64x8  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: float64x2): float64x2  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: float64x4): float64x4  {.header: simd, importcpp: "abs(@)"}
proc sign*(x: float32x8): float32x8  {.header: simd, importcpp: "sign(@)"}
proc sign*(x: float32x16): float32x16  {.header: simd, importcpp: "sign(@)"}
proc sign*(x: float32x4): float32x4  {.header: simd, importcpp: "sign(@)"}
proc sign*(x: float64x8): float64x8  {.header: simd, importcpp: "sign(@)"}
proc sign*(x: float64x2): float64x2  {.header: simd, importcpp: "sign(@)"}
proc sign*(x: float64x4): float64x4  {.header: simd, importcpp: "sign(@)"}
proc min*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "min(@)"}
proc min*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "min(@)"}
proc min*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "min(@)"}
proc max*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "max(@)"}
proc max*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "max(@)"}
proc max*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "max(@)"}
proc isnan*(x: float32x8): mask_float32x8  {.header: simd, importcpp: "isnan(@)"}
proc isnan*(x: float32x16): mask_float32x16  {.header: simd, importcpp: "isnan(@)"}
proc isnan*(x: float32x4): mask_float32x4  {.header: simd, importcpp: "isnan(@)"}
proc isnan*(x: float64x8): mask_float64x8  {.header: simd, importcpp: "isnan(@)"}
proc isnan*(x: float64x2): mask_float64x2  {.header: simd, importcpp: "isnan(@)"}
proc isnan*(x: float64x4): mask_float64x4  {.header: simd, importcpp: "isnan(@)"}
proc isnan2*(x: float32x8): mask_float32x8  {.header: simd, importcpp: "isnan2(@)"}
proc isnan2*(x: float32x16): mask_float32x16  {.header: simd, importcpp: "isnan2(@)"}
proc isnan2*(x: float32x4): mask_float32x4  {.header: simd, importcpp: "isnan2(@)"}
proc isnan2*(x: float64x8): mask_float64x8  {.header: simd, importcpp: "isnan2(@)"}
proc isnan2*(x: float64x2): mask_float64x2  {.header: simd, importcpp: "isnan2(@)"}
proc isnan2*(x: float64x4): mask_float64x4  {.header: simd, importcpp: "isnan2(@)"}
proc sqrt*(x: float32x8): float32x8  {.header: simd, importcpp: "sqrt(@)"}
proc sqrt*(x: float32x16): float32x16  {.header: simd, importcpp: "sqrt(@)"}
proc sqrt*(x: float32x4): float32x4  {.header: simd, importcpp: "sqrt(@)"}
proc sqrt*(x: float64x8): float64x8  {.header: simd, importcpp: "sqrt(@)"}
proc sqrt*(x: float64x2): float64x2  {.header: simd, importcpp: "sqrt(@)"}
proc sqrt*(x: float64x4): float64x4  {.header: simd, importcpp: "sqrt(@)"}
proc rcp_e*(x: float32x8): float32x8  {.header: simd, importcpp: "rcp_e(@)"}
proc rcp_e*(x: float32x16): float32x16  {.header: simd, importcpp: "rcp_e(@)"}
proc rcp_e*(x: float32x4): float32x4  {.header: simd, importcpp: "rcp_e(@)"}
proc rcp_e*(x: float64x8): float64x8  {.header: simd, importcpp: "rcp_e(@)"}
proc rcp_e*(x: float64x2): float64x2  {.header: simd, importcpp: "rcp_e(@)"}
proc rcp_e*(x: float64x4): float64x4  {.header: simd, importcpp: "rcp_e(@)"}
proc rcp_rh*(x: float32x8): float32x8  {.header: simd, importcpp: "rcp_rh(@)"}
proc rcp_rh*(x: float32x16): float32x16  {.header: simd, importcpp: "rcp_rh(@)"}
proc rcp_rh*(x: float32x4): float32x4  {.header: simd, importcpp: "rcp_rh(@)"}
proc rcp_rh*(x: float64x8): float64x8  {.header: simd, importcpp: "rcp_rh(@)"}
proc rcp_rh*(x: float64x2): float64x2  {.header: simd, importcpp: "rcp_rh(@)"}
proc rcp_rh*(x: float64x4): float64x4  {.header: simd, importcpp: "rcp_rh(@)"}
proc rsqrt_e*(x: float32x8): float32x8  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_e*(x: float32x16): float32x16  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_e*(x: float32x4): float32x4  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_e*(x: float64x8): float64x8  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_e*(x: float64x2): float64x2  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_e*(x: float64x4): float64x4  {.header: simd, importcpp: "rsqrt_e(@)"}
proc rsqrt_rh*(x: float32x8): float32x8  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc rsqrt_rh*(x: float32x16): float32x16  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc rsqrt_rh*(x: float32x4): float32x4  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc rsqrt_rh*(x: float64x8): float64x8  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc rsqrt_rh*(x: float64x2): float64x2  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc rsqrt_rh*(x: float64x4): float64x4  {.header: simd, importcpp: "rsqrt_rh(@)"}
proc add*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint8x32, y: int8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint8x32, y: int8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint8x64, y: int8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint8x64, y: int8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc add*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: int8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: int8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc add*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint16x32, y: int16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint16x32, y: int16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: int16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc add*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "add(@)"}
proc add*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc add*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc add*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc `+`*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc sub*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint8x32, y: int8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint8x32, y: int8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint8x64, y: int8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint8x64, y: int8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint16x32, y: int16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint16x32, y: int16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc sub*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc `-`*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc add_sat*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "add_sat(@)"}
proc add_sat*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "add_sat(@)"}
proc sub_sat*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub_sat(@)"}
proc sub_sat*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub_sat(@)"}
proc mul_lo*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint16x32, y: int16x32): uint16x32  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_lo*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "mul_lo(@)"}
proc mul_hi*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "mul_hi(@)"}
proc mul_hi*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "mul_hi(@)"}
proc mul_hi*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "mul_hi(@)"}
proc mul_hi*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "mul_hi(@)"}
proc mul_hi*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "mul_hi(@)"}
proc mul_hi*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "mul_hi(@)"}
proc mull*(x: int16x8, y: int16x8): int32x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int16x8, y: int16x8): int32x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int16x16, y: int16x16): int32x16  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int16x16, y: int16x16): int32x16  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint16x8, y: int16x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint16x8, y: int16x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint16x16, y: int16x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint16x16, y: int16x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int32x8, y: int32x8): int64x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int32x8, y: int32x8): int64x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int32x4, y: int32x4): int64x4  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int32x4, y: int32x4): int64x4  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint32x8, y: int32x8): uint64x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint32x8, y: int32x8): uint64x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint32x4, y: int32x4): uint64x4  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint32x4, y: int32x4): uint64x4  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: int32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: int32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "mull(@)"}
proc mull*(x: uint32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "mull(@)"}
proc `*`*(x: uint32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "mull(@)"}
proc neg*(x: int8x16): int8x16  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int8x32): int8x32  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int8x64): int8x64  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int16x8): int16x8  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int16x16): int16x16  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int16x32): int16x32  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int32x8): int32x8  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int32x16): int32x16  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int32x4): int32x4  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int64x8): int64x8  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int64x2): int64x2  {.header: simd, importcpp: "neg(@)"}
proc neg*(x: int64x4): int64x4  {.header: simd, importcpp: "neg(@)"}
proc cmp_lt*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_lt*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc `<`*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_lt(@)"}
proc cmp_gt*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_gt*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc `>`*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_gt(@)"}
proc cmp_le*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_le*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc `<=`*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_le(@)"}
proc cmp_ge*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int8x16, y: int8x16): mask_int8x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int8x32, y: int8x32): mask_int8x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int8x64, y: int8x64): mask_int8x64  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint8x16, y: uint8x16): mask_int8x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint8x32, y: uint8x32): mask_int8x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint8x64, y: uint8x64): mask_int8x64  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int16x8, y: int16x8): mask_int16x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int16x16, y: int16x16): mask_int16x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int16x32, y: int16x32): mask_int16x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint16x8, y: uint16x8): mask_int16x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint16x16, y: uint16x16): mask_int16x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint16x32, y: uint16x32): mask_int16x32  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int32x8, y: int32x8): mask_int32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int32x16, y: int32x16): mask_int32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int32x4, y: int32x4): mask_int32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint32x8, y: uint32x8): mask_int32x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint32x16, y: uint32x16): mask_int32x16  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint32x4, y: uint32x4): mask_int32x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int64x8, y: int64x8): mask_int64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int64x2, y: int64x2): mask_int64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: int64x4, y: int64x4): mask_int64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint64x8, y: uint64x8): mask_int64x8  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint64x2, y: uint64x2): mask_int64x2  {.header: simd, importcpp: "cmp_ge(@)"}
proc cmp_ge*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc `>=`*(x: uint64x4, y: uint64x4): mask_int64x4  {.header: simd, importcpp: "cmp_ge(@)"}
proc abs*(x: int8x16): uint8x16  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int8x32): uint8x32  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int8x64): uint8x64  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int16x8): uint16x8  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int16x16): uint16x16  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int16x32): uint16x32  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int32x8): uint32x8  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int32x16): uint32x16  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int32x4): uint32x4  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int64x8): uint64x8  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int64x2): uint64x2  {.header: simd, importcpp: "abs(@)"}
proc abs*(x: int64x4): uint64x4  {.header: simd, importcpp: "abs(@)"}
proc avg*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "avg(@)"}
proc avg*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "avg(@)"}
proc avg_trunc*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "avg_trunc(@)"}
proc avg_trunc*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "avg_trunc(@)"}
proc min*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "min(@)"}
proc min*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "min(@)"}
proc min*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "min(@)"}
proc min*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "min(@)"}
proc min*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "min(@)"}
proc min*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "min(@)"}
proc min*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "min(@)"}
proc max*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: int8x32, y: int8x32): int8x32  {.header: simd, importcpp: "max(@)"}
proc max*(x: int8x64, y: int8x64): int8x64  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint8x32, y: uint8x32): uint8x32  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint8x64, y: uint8x64): uint8x64  {.header: simd, importcpp: "max(@)"}
proc max*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: int16x32, y: int16x32): int16x32  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint16x32, y: uint16x32): uint16x32  {.header: simd, importcpp: "max(@)"}
proc max*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "max(@)"}
proc max*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "max(@)"}
proc max*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "max(@)"}
proc max*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "max(@)"}
proc shift_l*(x: int8x16): int8x16  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int8x16): int8x16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int8x32): int8x32  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int8x32): int8x32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int8x64): int8x64  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int8x64): int8x64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint8x16): uint8x16  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint8x16): uint8x16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint8x32): uint8x32  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint8x32): uint8x32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint8x64): uint8x64  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint8x64): uint8x64  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int16x8): int16x8  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int16x8): int16x8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int16x16): int16x16  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int16x16): int16x16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int16x32): int16x32  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int16x32): int16x32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint16x8): uint16x8  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint16x8): uint16x8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint16x16): uint16x16  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint16x16): uint16x16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint16x32): uint16x32  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint16x32): uint16x32  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int32x8): int32x8  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int32x8): int32x8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int32x16): int32x16  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int32x16): int32x16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int32x4): int32x4  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int32x4): int32x4  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint32x8): uint32x8  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint32x8): uint32x8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint32x16): uint32x16  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint32x16): uint32x16  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint32x4): uint32x4  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint32x4): uint32x4  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int64x8): int64x8  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int64x8): int64x8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int64x2): int64x2  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int64x2): int64x2  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: int64x4): int64x4  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: int64x4): int64x4  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint64x8): uint64x8  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint64x8): uint64x8  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint64x2): uint64x2  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint64x2): uint64x2  {.header: simd, importcpp: "shift_l(@)"}
proc shift_l*(x: uint64x4): uint64x4  {.header: simd, importcpp: "shift_l(@)"}
proc `<<`*(x: uint64x4): uint64x4  {.header: simd, importcpp: "shift_l(@)"}
proc shift_r*(x: int8x16): int8x16  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int8x16): int8x16  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int8x32): int8x32  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int8x32): int8x32  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int8x64): int8x64  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int8x64): int8x64  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint8x16): uint8x16  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint8x16): uint8x16  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint8x32): uint8x32  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint8x32): uint8x32  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint8x64): uint8x64  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint8x64): uint8x64  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int16x8): int16x8  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int16x8): int16x8  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int16x16): int16x16  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int16x16): int16x16  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int16x32): int16x32  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int16x32): int16x32  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint16x8): uint16x8  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint16x8): uint16x8  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint16x16): uint16x16  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint16x16): uint16x16  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint16x32): uint16x32  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint16x32): uint16x32  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int32x8): int32x8  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int32x8): int32x8  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int32x16): int32x16  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int32x16): int32x16  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int32x4): int32x4  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int32x4): int32x4  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint32x8): uint32x8  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint32x8): uint32x8  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint32x16): uint32x16  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint32x16): uint32x16  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint32x4): uint32x4  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint32x4): uint32x4  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int64x8): int64x8  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int64x8): int64x8  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int64x2): int64x2  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int64x2): int64x2  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: int64x4): int64x4  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: int64x4): int64x4  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint64x8): uint64x8  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint64x8): uint64x8  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint64x2): uint64x2  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint64x2): uint64x2  {.header: simd, importcpp: "shift_r(@)"}
proc shift_r*(x: uint64x4): uint64x4  {.header: simd, importcpp: "shift_r(@)"}
proc `>>`*(x: uint64x4): uint64x4  {.header: simd, importcpp: "shift_r(@)"}
