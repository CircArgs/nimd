import os
{.localPassc: "-I/home/nick/Projects/nimd/libsimdpp".}
{.emit: """
using namespace simdpp;
""".}

const
  simd = "<simdpp/simd.h>"
import macros
import strformat
import strutils
import sequtils
type uint8x16 {.header: simd, importcpp: "uint8<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint8): uint8x16 {.header: simd, importcpp: "make_float<uint8<4>>(@)".}

proc `+`*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint8x16): uint8x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint8x16): uint8  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint8x16, i: static[Natural]): uint8 = extract(i, x)
    

type int8x16 {.header: simd, importcpp: "int8<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int8): int8x16 {.header: simd, importcpp: "make_float<int8<4>>(@)".}

proc `+`*(x, y: int8x16): int8x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int8x16): int8x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int8x16): int8x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int8x16): int8x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int8x16): int8  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int8x16, i: static[Natural]): int8 = extract(i, x)
    

type uint16x8 {.header: simd, importcpp: "uint16<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: uint16): uint16x8 {.header: simd, importcpp: "make_float<uint16<4>>(@)".}

proc `+`*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint16x8): uint16x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint16x8): uint16  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint16x8, i: static[Natural]): uint16 = extract(i, x)
    

type int16x8 {.header: simd, importcpp: "int16<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: int16): int16x8 {.header: simd, importcpp: "make_float<int16<4>>(@)".}

proc `+`*(x, y: int16x8): int16x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int16x8): int16x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int16x8): int16x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int16x8): int16x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int16x8): int16  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int16x8, i: static[Natural]): int16 = extract(i, x)
    

type uint32x4 {.header: simd, importcpp: "uint32<4>".} = object

proc Vector(x0, x1, x2, x3: uint32): uint32x4 {.header: simd, importcpp: "make_float<uint32<4>>(@)".}

proc `+`*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint32x4): uint32x4  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint32x4): uint32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint32x4, i: static[Natural]): uint32 = extract(i, x)
    

type int32x4 {.header: simd, importcpp: "int32<4>".} = object

proc Vector(x0, x1, x2, x3: int32): int32x4 {.header: simd, importcpp: "make_float<int32<4>>(@)".}

proc `+`*(x, y: int32x4): int32x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int32x4): int32x4  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int32x4): int32x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int32x4): int32x4  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int32x4): int32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int32x4, i: static[Natural]): int32 = extract(i, x)
    

type uint64x2 {.header: simd, importcpp: "uint64<4>".} = object

proc Vector(x0, x1: uint64): uint64x2 {.header: simd, importcpp: "make_float<uint64<4>>(@)".}

proc `+`*(x, y: uint64x2): uint64x2  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint64x2): uint64x2  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint64x2): uint64x2  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint64x2): uint64x2  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint64x2): uint64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint64x2, i: static[Natural]): uint64 = extract(i, x)
    

type int64x2 {.header: simd, importcpp: "int64<4>".} = object

proc Vector(x0, x1: int64): int64x2 {.header: simd, importcpp: "make_float<int64<4>>(@)".}

proc `+`*(x, y: int64x2): int64x2  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int64x2): int64x2  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int64x2): int64x2  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int64x2): int64x2  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int64x2): int64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int64x2, i: static[Natural]): int64 = extract(i, x)
    

type float32x4 {.header: simd, importcpp: "float32<4>".} = object

proc Vector(x0, x1, x2, x3: float32): float32x4 {.header: simd, importcpp: "make_float<float32<4>>(@)".}

proc `+`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float32x4): float32x4  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: float32x4): float32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float32x4, i: static[Natural]): float32 = extract(i, x)
    

type float64x2 {.header: simd, importcpp: "float64<4>".} = object

proc Vector(x0, x1: float64): float64x2 {.header: simd, importcpp: "make_float<float64<4>>(@)".}

proc `+`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float64x2): float64x2  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: float64x2): float64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float64x2, i: static[Natural]): float64 = extract(i, x)
    

type uint8x32 {.header: simd, importcpp: "uint8<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: uint8): uint8x32 {.header: simd, importcpp: "make_float<uint8<4>>(@)".}

proc `+`*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint8x32): uint8x32  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint8x32): uint8  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint8x32, i: static[Natural]): uint8 = extract(i, x)
    

type int8x32 {.header: simd, importcpp: "int8<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: int8): int8x32 {.header: simd, importcpp: "make_float<int8<4>>(@)".}

proc `+`*(x, y: int8x32): int8x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int8x32): int8x32  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int8x32): int8x32  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int8x32): int8x32  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int8x32): int8  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int8x32, i: static[Natural]): int8 = extract(i, x)
    

type uint16x16 {.header: simd, importcpp: "uint16<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint16): uint16x16 {.header: simd, importcpp: "make_float<uint16<4>>(@)".}

proc `+`*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint16x16): uint16x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint16x16): uint16  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint16x16, i: static[Natural]): uint16 = extract(i, x)
    

type int16x16 {.header: simd, importcpp: "int16<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int16): int16x16 {.header: simd, importcpp: "make_float<int16<4>>(@)".}

proc `+`*(x, y: int16x16): int16x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int16x16): int16x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int16x16): int16x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int16x16): int16x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int16x16): int16  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int16x16, i: static[Natural]): int16 = extract(i, x)
    

type uint32x8 {.header: simd, importcpp: "uint32<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: uint32): uint32x8 {.header: simd, importcpp: "make_float<uint32<4>>(@)".}

proc `+`*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint32x8): uint32x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint32x8): uint32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint32x8, i: static[Natural]): uint32 = extract(i, x)
    

type int32x8 {.header: simd, importcpp: "int32<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: int32): int32x8 {.header: simd, importcpp: "make_float<int32<4>>(@)".}

proc `+`*(x, y: int32x8): int32x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int32x8): int32x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int32x8): int32x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int32x8): int32x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int32x8): int32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int32x8, i: static[Natural]): int32 = extract(i, x)
    

type uint64x4 {.header: simd, importcpp: "uint64<4>".} = object

proc Vector(x0, x1, x2, x3: uint64): uint64x4 {.header: simd, importcpp: "make_float<uint64<4>>(@)".}

proc `+`*(x, y: uint64x4): uint64x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint64x4): uint64x4  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint64x4): uint64x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint64x4): uint64x4  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint64x4): uint64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint64x4, i: static[Natural]): uint64 = extract(i, x)
    

type int64x4 {.header: simd, importcpp: "int64<4>".} = object

proc Vector(x0, x1, x2, x3: int64): int64x4 {.header: simd, importcpp: "make_float<int64<4>>(@)".}

proc `+`*(x, y: int64x4): int64x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int64x4): int64x4  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int64x4): int64x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int64x4): int64x4  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int64x4): int64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int64x4, i: static[Natural]): int64 = extract(i, x)
    

type float32x8 {.header: simd, importcpp: "float32<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: float32): float32x8 {.header: simd, importcpp: "make_float<float32<4>>(@)".}

proc `+`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float32x8): float32x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: float32x8): float32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float32x8, i: static[Natural]): float32 = extract(i, x)
    

type float64x4 {.header: simd, importcpp: "float64<4>".} = object

proc Vector(x0, x1, x2, x3: float64): float64x4 {.header: simd, importcpp: "make_float<float64<4>>(@)".}

proc `+`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float64x4): float64x4  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: float64x4): float64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float64x4, i: static[Natural]): float64 = extract(i, x)
    

type uint8x64 {.header: simd, importcpp: "uint8<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63: uint8): uint8x64 {.header: simd, importcpp: "make_float<uint8<4>>(@)".}

proc `+`*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint8x64): uint8x64  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint8x64): uint8  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint8x64, i: static[Natural]): uint8 = extract(i, x)
    

type int8x64 {.header: simd, importcpp: "int8<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63: int8): int8x64 {.header: simd, importcpp: "make_float<int8<4>>(@)".}

proc `+`*(x, y: int8x64): int8x64  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int8x64): int8x64  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int8x64): int8x64  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int8x64): int8x64  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int8x64): int8  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int8x64, i: static[Natural]): int8 = extract(i, x)
    

type uint16x32 {.header: simd, importcpp: "uint16<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: uint16): uint16x32 {.header: simd, importcpp: "make_float<uint16<4>>(@)".}

proc `+`*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint16x32): uint16x32  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint16x32): uint16  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint16x32, i: static[Natural]): uint16 = extract(i, x)
    

type int16x32 {.header: simd, importcpp: "int16<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: int16): int16x32 {.header: simd, importcpp: "make_float<int16<4>>(@)".}

proc `+`*(x, y: int16x32): int16x32  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int16x32): int16x32  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int16x32): int16x32  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int16x32): int16x32  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int16x32): int16  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int16x32, i: static[Natural]): int16 = extract(i, x)
    

type uint32x16 {.header: simd, importcpp: "uint32<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint32): uint32x16 {.header: simd, importcpp: "make_float<uint32<4>>(@)".}

proc `+`*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint32x16): uint32x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint32x16): uint32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint32x16, i: static[Natural]): uint32 = extract(i, x)
    

type int32x16 {.header: simd, importcpp: "int32<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int32): int32x16 {.header: simd, importcpp: "make_float<int32<4>>(@)".}

proc `+`*(x, y: int32x16): int32x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int32x16): int32x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int32x16): int32x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int32x16): int32x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int32x16): int32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int32x16, i: static[Natural]): int32 = extract(i, x)
    

type uint64x8 {.header: simd, importcpp: "uint64<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: uint64): uint64x8 {.header: simd, importcpp: "make_float<uint64<4>>(@)".}

proc `+`*(x, y: uint64x8): uint64x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: uint64x8): uint64x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: uint64x8): uint64x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: uint64x8): uint64x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: uint64x8): uint64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: uint64x8, i: static[Natural]): uint64 = extract(i, x)
    

type int64x8 {.header: simd, importcpp: "int64<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: int64): int64x8 {.header: simd, importcpp: "make_float<int64<4>>(@)".}

proc `+`*(x, y: int64x8): int64x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: int64x8): int64x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: int64x8): int64x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: int64x8): int64x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: int64x8): int64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: int64x8, i: static[Natural]): int64 = extract(i, x)
    

type float32x16 {.header: simd, importcpp: "float32<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: float32): float32x16 {.header: simd, importcpp: "make_float<float32<4>>(@)".}

proc `+`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float32x16): float32x16  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: float32x16): float32  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float32x16, i: static[Natural]): float32 = extract(i, x)
    

type float64x8 {.header: simd, importcpp: "float64<4>".} = object

proc Vector(x0, x1, x2, x3, x4, x5, x6, x7: float64): float64x8 {.header: simd, importcpp: "make_float<float64<4>>(@)".}

proc `+`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "add(@)"}
proc `-`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "sub(@)"}
proc `*`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "mul(@)"}
proc `/`*(x, y: float64x8): float64x8  {.header: simd, importcpp: "div(@)"}
proc extract*(k: Natural, x: float64x8): float64  {.header: simd, importcpp: "extract<#, 4>(@)"}
proc `[]`*(x: float64x8, i: static[Natural]): float64 = extract(i, x)

let
  x = Vector(1.int32,2,3,4)
  y = Vector(4.int32, 3, 2, 1)
  z = x+y/x
  w = x[2]+z[3]

echo w
# leat
#   x = create_float32x4(1,2,3,4)
#   y = create_float32x4(4, 3, 2, 1)
#   z = add(x, y)
#   w = extract(1, x)+extract(3, z)

# echo w
  # type
  #   float32x4 {.header: simd, importcpp: "float32<4>".} = object

  # proc createSimdFloat32x4(a, b, c, d: float32): float32x4 {.header: simd, importcpp: "make_float<float32<4>>(@)".}

  # proc add*(x, y: float32x4): float32x4  {.header: simd, importcpp: "add(@)"}
  # proc extract*(k: Natural, x: float32x4): float32  {.header: simd, importcpp: "extract<#, 4>(@)"}
  # let
  #   x = createSimdFloat32x4(1,2,3,4)
  #   y = createSimdFloat32x4(4, 3, 2, 1)
  #   z = add(x, y)
  #   w = extract(1, x)+extract(3, z)

  # echo float32
  # echo w
