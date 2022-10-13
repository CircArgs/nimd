
const libsimdpppath {.strdefine.}: string = ""
{.localPassc: libsimdpppath.}
const simd = "<simdpp/simd.h>"
{.emit: """
#include <simdpp/simd.h>
using namespace simdpp;
""".}

type SIZE_TYPE = uint8 or int8 or uint16 or int16 or uint32 or int32 or uint64 or int64 or float32 or float64

##############################################
### BEGIN uint, uint8, 16 ###
##############################################
type uint8x16* {.header: simd, importcpp: "uint8<16>".} = object
type mask_uint8x16* {.header: simd, importcpp: "mask_uint8<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint8): uint8x16 {.header: simd, importcpp: "make_uint<uint8<16>>(@)".}
proc splat_uint8x16*(x: SIZE_TYPE): uint8x16 = Vector(x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8)
proc to_mask*(x: uint8x16): mask_uint8x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint8x16): Natural = 16
proc extract_0*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: uint8x16): uint8  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: uint8x16, i: Natural): uint8 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var uint8x16, i: Natural, v: uint8) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: uint8x16): seq[uint8] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: uint8x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: uint8x16): string = "uint8x16"& $(x.to_array)
proc to_uint8x16*(x: seq[SIZE_TYPE]): uint8x16 =
  assert x.len == 16 ###
  Vector(x[0].uint8, x[1].uint8, x[2].uint8, x[3].uint8, x[4].uint8, x[5].uint8, x[6].uint8, x[7].uint8, x[8].uint8, x[9].uint8, x[10].uint8, x[11].uint8, x[12].uint8, x[13].uint8, x[14].uint8, x[15].uint8)
############################################
### END uint, uint8, 16 ###
############################################
##############################################
### BEGIN int, int8, 16 ###
##############################################
type int8x16* {.header: simd, importcpp: "int8<16>".} = object
type mask_int8x16* {.header: simd, importcpp: "mask_int8<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int8): int8x16 {.header: simd, importcpp: "make_int<int8<16>>(@)".}
proc splat_int8x16*(x: SIZE_TYPE): int8x16 = Vector(x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8)
proc to_mask*(x: int8x16): mask_int8x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int8x16): Natural = 16
proc extract_0*(x: int8x16): int8  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: int8x16): int8  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: int8x16): int8  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: int8x16): int8  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: int8x16): int8  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: int8x16): int8  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: int8x16): int8  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: int8x16): int8  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: int8x16): int8  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: int8x16): int8  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: int8x16): int8  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: int8x16): int8  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: int8x16): int8  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: int8x16): int8  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: int8x16): int8  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: int8x16): int8  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: int8x16, i: Natural): int8 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var int8x16, i: Natural, v: int8) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: int8x16): seq[int8] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: int8x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: int8x16): string = "int8x16"& $(x.to_array)
proc to_int8x16*(x: seq[SIZE_TYPE]): int8x16 =
  assert x.len == 16 ###
  Vector(x[0].int8, x[1].int8, x[2].int8, x[3].int8, x[4].int8, x[5].int8, x[6].int8, x[7].int8, x[8].int8, x[9].int8, x[10].int8, x[11].int8, x[12].int8, x[13].int8, x[14].int8, x[15].int8)
############################################
### END int, int8, 16 ###
############################################
##############################################
### BEGIN uint, uint16, 8 ###
##############################################
type uint16x8* {.header: simd, importcpp: "uint16<8>".} = object
type mask_uint16x8* {.header: simd, importcpp: "mask_uint16<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: uint16): uint16x8 {.header: simd, importcpp: "make_uint<uint16<8>>(@)".}
proc splat_uint16x8*(x: SIZE_TYPE): uint16x8 = Vector(x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16)
proc to_mask*(x: uint16x8): mask_uint16x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint16x8): Natural = 8
proc extract_0*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: uint16x8): uint16  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: uint16x8, i: Natural): uint16 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var uint16x8, i: Natural, v: uint16) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: uint16x8): seq[uint16] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: uint16x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: uint16x8): string = "uint16x8"& $(x.to_array)
proc to_uint16x8*(x: seq[SIZE_TYPE]): uint16x8 =
  assert x.len == 8 ###
  Vector(x[0].uint16, x[1].uint16, x[2].uint16, x[3].uint16, x[4].uint16, x[5].uint16, x[6].uint16, x[7].uint16)
############################################
### END uint, uint16, 8 ###
############################################
##############################################
### BEGIN int, int16, 8 ###
##############################################
type int16x8* {.header: simd, importcpp: "int16<8>".} = object
type mask_int16x8* {.header: simd, importcpp: "mask_int16<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: int16): int16x8 {.header: simd, importcpp: "make_int<int16<8>>(@)".}
proc splat_int16x8*(x: SIZE_TYPE): int16x8 = Vector(x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16)
proc to_mask*(x: int16x8): mask_int16x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int16x8): Natural = 8
proc extract_0*(x: int16x8): int16  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: int16x8): int16  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: int16x8): int16  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: int16x8): int16  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: int16x8): int16  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: int16x8): int16  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: int16x8): int16  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: int16x8): int16  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: int16x8, i: Natural): int16 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var int16x8, i: Natural, v: int16) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: int16x8): seq[int16] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: int16x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: int16x8): string = "int16x8"& $(x.to_array)
proc to_int16x8*(x: seq[SIZE_TYPE]): int16x8 =
  assert x.len == 8 ###
  Vector(x[0].int16, x[1].int16, x[2].int16, x[3].int16, x[4].int16, x[5].int16, x[6].int16, x[7].int16)
############################################
### END int, int16, 8 ###
############################################
##############################################
### BEGIN uint, uint32, 4 ###
##############################################
type uint32x4* {.header: simd, importcpp: "uint32<4>".} = object
type mask_uint32x4* {.header: simd, importcpp: "mask_uint32<4>".} = object
proc Vector*(x0, x1, x2, x3: uint32): uint32x4 {.header: simd, importcpp: "make_uint<uint32<4>>(@)".}
proc splat_uint32x4*(x: SIZE_TYPE): uint32x4 = Vector(x.uint32, x.uint32, x.uint32, x.uint32)
proc to_mask*(x: uint32x4): mask_uint32x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint32x4): Natural = 4
proc extract_0*(x: uint32x4): uint32  {.header: simd, importcpp: "extract<0, 4>(@)"}
proc extract_1*(x: uint32x4): uint32  {.header: simd, importcpp: "extract<1, 4>(@)"}
proc extract_2*(x: uint32x4): uint32  {.header: simd, importcpp: "extract<2, 4>(@)"}
proc extract_3*(x: uint32x4): uint32  {.header: simd, importcpp: "extract<3, 4>(@)"}
proc `[]`*(x: uint32x4, i: Natural): uint32 =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  else:###
    return extract_3(x)###
proc insert_0*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "insert<0, 4>(@)"}
proc insert_1*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "insert<1, 4>(@)"}
proc insert_2*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "insert<2, 4>(@)"}
proc insert_3*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "insert<3, 4>(@)"}
proc `[]=`*(x: var uint32x4, i: Natural, v: uint32) =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  else:###
    x=insert_3(x, v)###
proc to_seq*(x: uint32x4): seq[uint32] = @[x[0], x[1], x[2], x[3]]
proc to_array*(x: uint32x4): auto = [x[0], x[1], x[2], x[3]]
proc `$`*(x: uint32x4): string = "uint32x4"& $(x.to_array)
proc to_uint32x4*(x: seq[SIZE_TYPE]): uint32x4 =
  assert x.len == 4 ###
  Vector(x[0].uint32, x[1].uint32, x[2].uint32, x[3].uint32)
############################################
### END uint, uint32, 4 ###
############################################
##############################################
### BEGIN int, int32, 4 ###
##############################################
type int32x4* {.header: simd, importcpp: "int32<4>".} = object
type mask_int32x4* {.header: simd, importcpp: "mask_int32<4>".} = object
proc Vector*(x0, x1, x2, x3: int32): int32x4 {.header: simd, importcpp: "make_int<int32<4>>(@)".}
proc splat_int32x4*(x: SIZE_TYPE): int32x4 = Vector(x.int32, x.int32, x.int32, x.int32)
proc to_mask*(x: int32x4): mask_int32x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int32x4): Natural = 4
proc extract_0*(x: int32x4): int32  {.header: simd, importcpp: "extract<0, 4>(@)"}
proc extract_1*(x: int32x4): int32  {.header: simd, importcpp: "extract<1, 4>(@)"}
proc extract_2*(x: int32x4): int32  {.header: simd, importcpp: "extract<2, 4>(@)"}
proc extract_3*(x: int32x4): int32  {.header: simd, importcpp: "extract<3, 4>(@)"}
proc `[]`*(x: int32x4, i: Natural): int32 =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  else:###
    return extract_3(x)###
proc insert_0*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "insert<0, 4>(@)"}
proc insert_1*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "insert<1, 4>(@)"}
proc insert_2*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "insert<2, 4>(@)"}
proc insert_3*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "insert<3, 4>(@)"}
proc `[]=`*(x: var int32x4, i: Natural, v: int32) =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  else:###
    x=insert_3(x, v)###
proc to_seq*(x: int32x4): seq[int32] = @[x[0], x[1], x[2], x[3]]
proc to_array*(x: int32x4): auto = [x[0], x[1], x[2], x[3]]
proc `$`*(x: int32x4): string = "int32x4"& $(x.to_array)
proc to_int32x4*(x: seq[SIZE_TYPE]): int32x4 =
  assert x.len == 4 ###
  Vector(x[0].int32, x[1].int32, x[2].int32, x[3].int32)
############################################
### END int, int32, 4 ###
############################################
##############################################
### BEGIN uint, uint64, 2 ###
##############################################
type uint64x2* {.header: simd, importcpp: "uint64<2>".} = object
type mask_uint64x2* {.header: simd, importcpp: "mask_uint64<2>".} = object
proc Vector*(x0, x1: uint64): uint64x2 {.header: simd, importcpp: "make_uint<uint64<2>>(@)".}
proc splat_uint64x2*(x: SIZE_TYPE): uint64x2 = Vector(x.uint64, x.uint64)
proc to_mask*(x: uint64x2): mask_uint64x2 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint64x2): Natural = 2
proc extract_0*(x: uint64x2): uint64  {.header: simd, importcpp: "extract<0, 2>(@)"}
proc extract_1*(x: uint64x2): uint64  {.header: simd, importcpp: "extract<1, 2>(@)"}
proc `[]`*(x: uint64x2, i: Natural): uint64 =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    return extract_0(x)###
  else:###
    return extract_1(x)###
proc insert_0*(x: var uint64x2, v: uint64): uint64x2 {.header: simd, importcpp: "insert<0, 2>(@)"}
proc insert_1*(x: var uint64x2, v: uint64): uint64x2 {.header: simd, importcpp: "insert<1, 2>(@)"}
proc `[]=`*(x: var uint64x2, i: Natural, v: uint64) =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    x=insert_0(x, v)###
  else:###
    x=insert_1(x, v)###
proc to_seq*(x: uint64x2): seq[uint64] = @[x[0], x[1]]
proc to_array*(x: uint64x2): auto = [x[0], x[1]]
proc `$`*(x: uint64x2): string = "uint64x2"& $(x.to_array)
proc to_uint64x2*(x: seq[SIZE_TYPE]): uint64x2 =
  assert x.len == 2 ###
  Vector(x[0].uint64, x[1].uint64)
############################################
### END uint, uint64, 2 ###
############################################
##############################################
### BEGIN int, int64, 2 ###
##############################################
type int64x2* {.header: simd, importcpp: "int64<2>".} = object
type mask_int64x2* {.header: simd, importcpp: "mask_int64<2>".} = object
proc Vector*(x0, x1: int64): int64x2 {.header: simd, importcpp: "make_int<int64<2>>(@)".}
proc splat_int64x2*(x: SIZE_TYPE): int64x2 = Vector(x.int64, x.int64)
proc to_mask*(x: int64x2): mask_int64x2 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int64x2): Natural = 2
proc extract_0*(x: int64x2): int64  {.header: simd, importcpp: "extract<0, 2>(@)"}
proc extract_1*(x: int64x2): int64  {.header: simd, importcpp: "extract<1, 2>(@)"}
proc `[]`*(x: int64x2, i: Natural): int64 =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    return extract_0(x)###
  else:###
    return extract_1(x)###
proc insert_0*(x: var int64x2, v: int64): int64x2 {.header: simd, importcpp: "insert<0, 2>(@)"}
proc insert_1*(x: var int64x2, v: int64): int64x2 {.header: simd, importcpp: "insert<1, 2>(@)"}
proc `[]=`*(x: var int64x2, i: Natural, v: int64) =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    x=insert_0(x, v)###
  else:###
    x=insert_1(x, v)###
proc to_seq*(x: int64x2): seq[int64] = @[x[0], x[1]]
proc to_array*(x: int64x2): auto = [x[0], x[1]]
proc `$`*(x: int64x2): string = "int64x2"& $(x.to_array)
proc to_int64x2*(x: seq[SIZE_TYPE]): int64x2 =
  assert x.len == 2 ###
  Vector(x[0].int64, x[1].int64)
############################################
### END int, int64, 2 ###
############################################
##############################################
### BEGIN float, float32, 4 ###
##############################################
type float32x4* {.header: simd, importcpp: "float32<4>".} = object
type mask_float32x4* {.header: simd, importcpp: "mask_float32<4>".} = object
proc Vector*(x0, x1, x2, x3: float32): float32x4 {.header: simd, importcpp: "make_float<float32<4>>(@)".}
proc splat_float32x4*(x: SIZE_TYPE): float32x4 = Vector(x.float32, x.float32, x.float32, x.float32)
proc to_mask*(x: float32x4): mask_float32x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float32x4): Natural = 4
proc extract_0*(x: float32x4): float32  {.header: simd, importcpp: "extract<0, 4>(@)"}
proc extract_1*(x: float32x4): float32  {.header: simd, importcpp: "extract<1, 4>(@)"}
proc extract_2*(x: float32x4): float32  {.header: simd, importcpp: "extract<2, 4>(@)"}
proc extract_3*(x: float32x4): float32  {.header: simd, importcpp: "extract<3, 4>(@)"}
proc `[]`*(x: float32x4, i: Natural): float32 =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  else:###
    return extract_3(x)###
proc insert_0*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "insert<0, 4>(@)"}
proc insert_1*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "insert<1, 4>(@)"}
proc insert_2*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "insert<2, 4>(@)"}
proc insert_3*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "insert<3, 4>(@)"}
proc `[]=`*(x: var float32x4, i: Natural, v: float32) =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  else:###
    x=insert_3(x, v)###
proc to_seq*(x: float32x4): seq[float32] = @[x[0], x[1], x[2], x[3]]
proc to_array*(x: float32x4): auto = [x[0], x[1], x[2], x[3]]
proc `$`*(x: float32x4): string = "float32x4"& $(x.to_array)
proc to_float32x4*(x: seq[SIZE_TYPE]): float32x4 =
  assert x.len == 4 ###
  Vector(x[0].float32, x[1].float32, x[2].float32, x[3].float32)
############################################
### END float, float32, 4 ###
############################################
##############################################
### BEGIN float, float64, 2 ###
##############################################
type float64x2* {.header: simd, importcpp: "float64<2>".} = object
type mask_float64x2* {.header: simd, importcpp: "mask_float64<2>".} = object
proc Vector*(x0, x1: float64): float64x2 {.header: simd, importcpp: "make_float<float64<2>>(@)".}
proc splat_float64x2*(x: SIZE_TYPE): float64x2 = Vector(x.float64, x.float64)
proc to_mask*(x: float64x2): mask_float64x2 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float64x2): Natural = 2
proc extract_0*(x: float64x2): float64  {.header: simd, importcpp: "extract<0, 2>(@)"}
proc extract_1*(x: float64x2): float64  {.header: simd, importcpp: "extract<1, 2>(@)"}
proc `[]`*(x: float64x2, i: Natural): float64 =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    return extract_0(x)###
  else:###
    return extract_1(x)###
proc insert_0*(x: var float64x2, v: float64): float64x2 {.header: simd, importcpp: "insert<0, 2>(@)"}
proc insert_1*(x: var float64x2, v: float64): float64x2 {.header: simd, importcpp: "insert<1, 2>(@)"}
proc `[]=`*(x: var float64x2, i: Natural, v: float64) =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    x=insert_0(x, v)###
  else:###
    x=insert_1(x, v)###
proc to_seq*(x: float64x2): seq[float64] = @[x[0], x[1]]
proc to_array*(x: float64x2): auto = [x[0], x[1]]
proc `$`*(x: float64x2): string = "float64x2"& $(x.to_array)
proc to_float64x2*(x: seq[SIZE_TYPE]): float64x2 =
  assert x.len == 2 ###
  Vector(x[0].float64, x[1].float64)
############################################
### END float, float64, 2 ###
############################################
##############################################
### BEGIN uint, uint8, 32 ###
##############################################
type uint8x32* {.header: simd, importcpp: "uint8<32>".} = object
type mask_uint8x32* {.header: simd, importcpp: "mask_uint8<32>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: uint8): uint8x32 {.header: simd, importcpp: "make_uint<uint8<32>>(@)".}
proc splat_uint8x32*(x: SIZE_TYPE): uint8x32 = Vector(x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8)
proc to_mask*(x: uint8x32): mask_uint8x32 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint8x32): Natural = 32
proc extract_0*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<0, 32>(@)"}
proc extract_1*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<1, 32>(@)"}
proc extract_2*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<2, 32>(@)"}
proc extract_3*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<3, 32>(@)"}
proc extract_4*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<4, 32>(@)"}
proc extract_5*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<5, 32>(@)"}
proc extract_6*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<6, 32>(@)"}
proc extract_7*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<7, 32>(@)"}
proc extract_8*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<8, 32>(@)"}
proc extract_9*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<9, 32>(@)"}
proc extract_10*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<10, 32>(@)"}
proc extract_11*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<11, 32>(@)"}
proc extract_12*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<12, 32>(@)"}
proc extract_13*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<13, 32>(@)"}
proc extract_14*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<14, 32>(@)"}
proc extract_15*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<15, 32>(@)"}
proc extract_16*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<16, 32>(@)"}
proc extract_17*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<17, 32>(@)"}
proc extract_18*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<18, 32>(@)"}
proc extract_19*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<19, 32>(@)"}
proc extract_20*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<20, 32>(@)"}
proc extract_21*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<21, 32>(@)"}
proc extract_22*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<22, 32>(@)"}
proc extract_23*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<23, 32>(@)"}
proc extract_24*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<24, 32>(@)"}
proc extract_25*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<25, 32>(@)"}
proc extract_26*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<26, 32>(@)"}
proc extract_27*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<27, 32>(@)"}
proc extract_28*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<28, 32>(@)"}
proc extract_29*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<29, 32>(@)"}
proc extract_30*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<30, 32>(@)"}
proc extract_31*(x: uint8x32): uint8  {.header: simd, importcpp: "extract<31, 32>(@)"}
proc `[]`*(x: uint8x32, i: Natural): uint8 =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  elif i == 15:###
    return extract_15(x)###
  elif i == 16:###
    return extract_16(x)###
  elif i == 17:###
    return extract_17(x)###
  elif i == 18:###
    return extract_18(x)###
  elif i == 19:###
    return extract_19(x)###
  elif i == 20:###
    return extract_20(x)###
  elif i == 21:###
    return extract_21(x)###
  elif i == 22:###
    return extract_22(x)###
  elif i == 23:###
    return extract_23(x)###
  elif i == 24:###
    return extract_24(x)###
  elif i == 25:###
    return extract_25(x)###
  elif i == 26:###
    return extract_26(x)###
  elif i == 27:###
    return extract_27(x)###
  elif i == 28:###
    return extract_28(x)###
  elif i == 29:###
    return extract_29(x)###
  elif i == 30:###
    return extract_30(x)###
  else:###
    return extract_31(x)###
proc insert_0*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<0, 32>(@)"}
proc insert_1*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<1, 32>(@)"}
proc insert_2*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<2, 32>(@)"}
proc insert_3*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<3, 32>(@)"}
proc insert_4*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<4, 32>(@)"}
proc insert_5*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<5, 32>(@)"}
proc insert_6*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<6, 32>(@)"}
proc insert_7*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<7, 32>(@)"}
proc insert_8*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<8, 32>(@)"}
proc insert_9*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<9, 32>(@)"}
proc insert_10*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<10, 32>(@)"}
proc insert_11*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<11, 32>(@)"}
proc insert_12*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<12, 32>(@)"}
proc insert_13*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<13, 32>(@)"}
proc insert_14*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<14, 32>(@)"}
proc insert_15*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<15, 32>(@)"}
proc insert_16*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<16, 32>(@)"}
proc insert_17*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<17, 32>(@)"}
proc insert_18*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<18, 32>(@)"}
proc insert_19*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<19, 32>(@)"}
proc insert_20*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<20, 32>(@)"}
proc insert_21*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<21, 32>(@)"}
proc insert_22*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<22, 32>(@)"}
proc insert_23*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<23, 32>(@)"}
proc insert_24*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<24, 32>(@)"}
proc insert_25*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<25, 32>(@)"}
proc insert_26*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<26, 32>(@)"}
proc insert_27*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<27, 32>(@)"}
proc insert_28*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<28, 32>(@)"}
proc insert_29*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<29, 32>(@)"}
proc insert_30*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<30, 32>(@)"}
proc insert_31*(x: var uint8x32, v: uint8): uint8x32 {.header: simd, importcpp: "insert<31, 32>(@)"}
proc `[]=`*(x: var uint8x32, i: Natural, v: uint8) =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  elif i == 15:###
    x=insert_15(x, v)###
  elif i == 16:###
    x=insert_16(x, v)###
  elif i == 17:###
    x=insert_17(x, v)###
  elif i == 18:###
    x=insert_18(x, v)###
  elif i == 19:###
    x=insert_19(x, v)###
  elif i == 20:###
    x=insert_20(x, v)###
  elif i == 21:###
    x=insert_21(x, v)###
  elif i == 22:###
    x=insert_22(x, v)###
  elif i == 23:###
    x=insert_23(x, v)###
  elif i == 24:###
    x=insert_24(x, v)###
  elif i == 25:###
    x=insert_25(x, v)###
  elif i == 26:###
    x=insert_26(x, v)###
  elif i == 27:###
    x=insert_27(x, v)###
  elif i == 28:###
    x=insert_28(x, v)###
  elif i == 29:###
    x=insert_29(x, v)###
  elif i == 30:###
    x=insert_30(x, v)###
  else:###
    x=insert_31(x, v)###
proc to_seq*(x: uint8x32): seq[uint8] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc to_array*(x: uint8x32): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc `$`*(x: uint8x32): string = "uint8x32"& $(x.to_array)
proc to_uint8x32*(x: seq[SIZE_TYPE]): uint8x32 =
  assert x.len == 32 ###
  Vector(x[0].uint8, x[1].uint8, x[2].uint8, x[3].uint8, x[4].uint8, x[5].uint8, x[6].uint8, x[7].uint8, x[8].uint8, x[9].uint8, x[10].uint8, x[11].uint8, x[12].uint8, x[13].uint8, x[14].uint8, x[15].uint8, x[16].uint8, x[17].uint8, x[18].uint8, x[19].uint8, x[20].uint8, x[21].uint8, x[22].uint8, x[23].uint8, x[24].uint8, x[25].uint8, x[26].uint8, x[27].uint8, x[28].uint8, x[29].uint8, x[30].uint8, x[31].uint8)
############################################
### END uint, uint8, 32 ###
############################################
##############################################
### BEGIN int, int8, 32 ###
##############################################
type int8x32* {.header: simd, importcpp: "int8<32>".} = object
type mask_int8x32* {.header: simd, importcpp: "mask_int8<32>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: int8): int8x32 {.header: simd, importcpp: "make_int<int8<32>>(@)".}
proc splat_int8x32*(x: SIZE_TYPE): int8x32 = Vector(x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8)
proc to_mask*(x: int8x32): mask_int8x32 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int8x32): Natural = 32
proc extract_0*(x: int8x32): int8  {.header: simd, importcpp: "extract<0, 32>(@)"}
proc extract_1*(x: int8x32): int8  {.header: simd, importcpp: "extract<1, 32>(@)"}
proc extract_2*(x: int8x32): int8  {.header: simd, importcpp: "extract<2, 32>(@)"}
proc extract_3*(x: int8x32): int8  {.header: simd, importcpp: "extract<3, 32>(@)"}
proc extract_4*(x: int8x32): int8  {.header: simd, importcpp: "extract<4, 32>(@)"}
proc extract_5*(x: int8x32): int8  {.header: simd, importcpp: "extract<5, 32>(@)"}
proc extract_6*(x: int8x32): int8  {.header: simd, importcpp: "extract<6, 32>(@)"}
proc extract_7*(x: int8x32): int8  {.header: simd, importcpp: "extract<7, 32>(@)"}
proc extract_8*(x: int8x32): int8  {.header: simd, importcpp: "extract<8, 32>(@)"}
proc extract_9*(x: int8x32): int8  {.header: simd, importcpp: "extract<9, 32>(@)"}
proc extract_10*(x: int8x32): int8  {.header: simd, importcpp: "extract<10, 32>(@)"}
proc extract_11*(x: int8x32): int8  {.header: simd, importcpp: "extract<11, 32>(@)"}
proc extract_12*(x: int8x32): int8  {.header: simd, importcpp: "extract<12, 32>(@)"}
proc extract_13*(x: int8x32): int8  {.header: simd, importcpp: "extract<13, 32>(@)"}
proc extract_14*(x: int8x32): int8  {.header: simd, importcpp: "extract<14, 32>(@)"}
proc extract_15*(x: int8x32): int8  {.header: simd, importcpp: "extract<15, 32>(@)"}
proc extract_16*(x: int8x32): int8  {.header: simd, importcpp: "extract<16, 32>(@)"}
proc extract_17*(x: int8x32): int8  {.header: simd, importcpp: "extract<17, 32>(@)"}
proc extract_18*(x: int8x32): int8  {.header: simd, importcpp: "extract<18, 32>(@)"}
proc extract_19*(x: int8x32): int8  {.header: simd, importcpp: "extract<19, 32>(@)"}
proc extract_20*(x: int8x32): int8  {.header: simd, importcpp: "extract<20, 32>(@)"}
proc extract_21*(x: int8x32): int8  {.header: simd, importcpp: "extract<21, 32>(@)"}
proc extract_22*(x: int8x32): int8  {.header: simd, importcpp: "extract<22, 32>(@)"}
proc extract_23*(x: int8x32): int8  {.header: simd, importcpp: "extract<23, 32>(@)"}
proc extract_24*(x: int8x32): int8  {.header: simd, importcpp: "extract<24, 32>(@)"}
proc extract_25*(x: int8x32): int8  {.header: simd, importcpp: "extract<25, 32>(@)"}
proc extract_26*(x: int8x32): int8  {.header: simd, importcpp: "extract<26, 32>(@)"}
proc extract_27*(x: int8x32): int8  {.header: simd, importcpp: "extract<27, 32>(@)"}
proc extract_28*(x: int8x32): int8  {.header: simd, importcpp: "extract<28, 32>(@)"}
proc extract_29*(x: int8x32): int8  {.header: simd, importcpp: "extract<29, 32>(@)"}
proc extract_30*(x: int8x32): int8  {.header: simd, importcpp: "extract<30, 32>(@)"}
proc extract_31*(x: int8x32): int8  {.header: simd, importcpp: "extract<31, 32>(@)"}
proc `[]`*(x: int8x32, i: Natural): int8 =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  elif i == 15:###
    return extract_15(x)###
  elif i == 16:###
    return extract_16(x)###
  elif i == 17:###
    return extract_17(x)###
  elif i == 18:###
    return extract_18(x)###
  elif i == 19:###
    return extract_19(x)###
  elif i == 20:###
    return extract_20(x)###
  elif i == 21:###
    return extract_21(x)###
  elif i == 22:###
    return extract_22(x)###
  elif i == 23:###
    return extract_23(x)###
  elif i == 24:###
    return extract_24(x)###
  elif i == 25:###
    return extract_25(x)###
  elif i == 26:###
    return extract_26(x)###
  elif i == 27:###
    return extract_27(x)###
  elif i == 28:###
    return extract_28(x)###
  elif i == 29:###
    return extract_29(x)###
  elif i == 30:###
    return extract_30(x)###
  else:###
    return extract_31(x)###
proc insert_0*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<0, 32>(@)"}
proc insert_1*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<1, 32>(@)"}
proc insert_2*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<2, 32>(@)"}
proc insert_3*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<3, 32>(@)"}
proc insert_4*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<4, 32>(@)"}
proc insert_5*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<5, 32>(@)"}
proc insert_6*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<6, 32>(@)"}
proc insert_7*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<7, 32>(@)"}
proc insert_8*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<8, 32>(@)"}
proc insert_9*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<9, 32>(@)"}
proc insert_10*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<10, 32>(@)"}
proc insert_11*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<11, 32>(@)"}
proc insert_12*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<12, 32>(@)"}
proc insert_13*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<13, 32>(@)"}
proc insert_14*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<14, 32>(@)"}
proc insert_15*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<15, 32>(@)"}
proc insert_16*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<16, 32>(@)"}
proc insert_17*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<17, 32>(@)"}
proc insert_18*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<18, 32>(@)"}
proc insert_19*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<19, 32>(@)"}
proc insert_20*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<20, 32>(@)"}
proc insert_21*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<21, 32>(@)"}
proc insert_22*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<22, 32>(@)"}
proc insert_23*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<23, 32>(@)"}
proc insert_24*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<24, 32>(@)"}
proc insert_25*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<25, 32>(@)"}
proc insert_26*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<26, 32>(@)"}
proc insert_27*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<27, 32>(@)"}
proc insert_28*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<28, 32>(@)"}
proc insert_29*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<29, 32>(@)"}
proc insert_30*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<30, 32>(@)"}
proc insert_31*(x: var int8x32, v: int8): int8x32 {.header: simd, importcpp: "insert<31, 32>(@)"}
proc `[]=`*(x: var int8x32, i: Natural, v: int8) =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  elif i == 15:###
    x=insert_15(x, v)###
  elif i == 16:###
    x=insert_16(x, v)###
  elif i == 17:###
    x=insert_17(x, v)###
  elif i == 18:###
    x=insert_18(x, v)###
  elif i == 19:###
    x=insert_19(x, v)###
  elif i == 20:###
    x=insert_20(x, v)###
  elif i == 21:###
    x=insert_21(x, v)###
  elif i == 22:###
    x=insert_22(x, v)###
  elif i == 23:###
    x=insert_23(x, v)###
  elif i == 24:###
    x=insert_24(x, v)###
  elif i == 25:###
    x=insert_25(x, v)###
  elif i == 26:###
    x=insert_26(x, v)###
  elif i == 27:###
    x=insert_27(x, v)###
  elif i == 28:###
    x=insert_28(x, v)###
  elif i == 29:###
    x=insert_29(x, v)###
  elif i == 30:###
    x=insert_30(x, v)###
  else:###
    x=insert_31(x, v)###
proc to_seq*(x: int8x32): seq[int8] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc to_array*(x: int8x32): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc `$`*(x: int8x32): string = "int8x32"& $(x.to_array)
proc to_int8x32*(x: seq[SIZE_TYPE]): int8x32 =
  assert x.len == 32 ###
  Vector(x[0].int8, x[1].int8, x[2].int8, x[3].int8, x[4].int8, x[5].int8, x[6].int8, x[7].int8, x[8].int8, x[9].int8, x[10].int8, x[11].int8, x[12].int8, x[13].int8, x[14].int8, x[15].int8, x[16].int8, x[17].int8, x[18].int8, x[19].int8, x[20].int8, x[21].int8, x[22].int8, x[23].int8, x[24].int8, x[25].int8, x[26].int8, x[27].int8, x[28].int8, x[29].int8, x[30].int8, x[31].int8)
############################################
### END int, int8, 32 ###
############################################
##############################################
### BEGIN uint, uint16, 16 ###
##############################################
type uint16x16* {.header: simd, importcpp: "uint16<16>".} = object
type mask_uint16x16* {.header: simd, importcpp: "mask_uint16<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint16): uint16x16 {.header: simd, importcpp: "make_uint<uint16<16>>(@)".}
proc splat_uint16x16*(x: SIZE_TYPE): uint16x16 = Vector(x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16)
proc to_mask*(x: uint16x16): mask_uint16x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint16x16): Natural = 16
proc extract_0*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: uint16x16): uint16  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: uint16x16, i: Natural): uint16 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var uint16x16, i: Natural, v: uint16) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: uint16x16): seq[uint16] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: uint16x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: uint16x16): string = "uint16x16"& $(x.to_array)
proc to_uint16x16*(x: seq[SIZE_TYPE]): uint16x16 =
  assert x.len == 16 ###
  Vector(x[0].uint16, x[1].uint16, x[2].uint16, x[3].uint16, x[4].uint16, x[5].uint16, x[6].uint16, x[7].uint16, x[8].uint16, x[9].uint16, x[10].uint16, x[11].uint16, x[12].uint16, x[13].uint16, x[14].uint16, x[15].uint16)
############################################
### END uint, uint16, 16 ###
############################################
##############################################
### BEGIN int, int16, 16 ###
##############################################
type int16x16* {.header: simd, importcpp: "int16<16>".} = object
type mask_int16x16* {.header: simd, importcpp: "mask_int16<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int16): int16x16 {.header: simd, importcpp: "make_int<int16<16>>(@)".}
proc splat_int16x16*(x: SIZE_TYPE): int16x16 = Vector(x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16)
proc to_mask*(x: int16x16): mask_int16x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int16x16): Natural = 16
proc extract_0*(x: int16x16): int16  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: int16x16): int16  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: int16x16): int16  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: int16x16): int16  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: int16x16): int16  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: int16x16): int16  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: int16x16): int16  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: int16x16): int16  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: int16x16): int16  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: int16x16): int16  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: int16x16): int16  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: int16x16): int16  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: int16x16): int16  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: int16x16): int16  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: int16x16): int16  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: int16x16): int16  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: int16x16, i: Natural): int16 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var int16x16, i: Natural, v: int16) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: int16x16): seq[int16] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: int16x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: int16x16): string = "int16x16"& $(x.to_array)
proc to_int16x16*(x: seq[SIZE_TYPE]): int16x16 =
  assert x.len == 16 ###
  Vector(x[0].int16, x[1].int16, x[2].int16, x[3].int16, x[4].int16, x[5].int16, x[6].int16, x[7].int16, x[8].int16, x[9].int16, x[10].int16, x[11].int16, x[12].int16, x[13].int16, x[14].int16, x[15].int16)
############################################
### END int, int16, 16 ###
############################################
##############################################
### BEGIN uint, uint32, 8 ###
##############################################
type uint32x8* {.header: simd, importcpp: "uint32<8>".} = object
type mask_uint32x8* {.header: simd, importcpp: "mask_uint32<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: uint32): uint32x8 {.header: simd, importcpp: "make_uint<uint32<8>>(@)".}
proc splat_uint32x8*(x: SIZE_TYPE): uint32x8 = Vector(x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32)
proc to_mask*(x: uint32x8): mask_uint32x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint32x8): Natural = 8
proc extract_0*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: uint32x8): uint32  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: uint32x8, i: Natural): uint32 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var uint32x8, i: Natural, v: uint32) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: uint32x8): seq[uint32] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: uint32x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: uint32x8): string = "uint32x8"& $(x.to_array)
proc to_uint32x8*(x: seq[SIZE_TYPE]): uint32x8 =
  assert x.len == 8 ###
  Vector(x[0].uint32, x[1].uint32, x[2].uint32, x[3].uint32, x[4].uint32, x[5].uint32, x[6].uint32, x[7].uint32)
############################################
### END uint, uint32, 8 ###
############################################
##############################################
### BEGIN int, int32, 8 ###
##############################################
type int32x8* {.header: simd, importcpp: "int32<8>".} = object
type mask_int32x8* {.header: simd, importcpp: "mask_int32<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: int32): int32x8 {.header: simd, importcpp: "make_int<int32<8>>(@)".}
proc splat_int32x8*(x: SIZE_TYPE): int32x8 = Vector(x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32)
proc to_mask*(x: int32x8): mask_int32x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int32x8): Natural = 8
proc extract_0*(x: int32x8): int32  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: int32x8): int32  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: int32x8): int32  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: int32x8): int32  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: int32x8): int32  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: int32x8): int32  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: int32x8): int32  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: int32x8): int32  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: int32x8, i: Natural): int32 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var int32x8, i: Natural, v: int32) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: int32x8): seq[int32] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: int32x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: int32x8): string = "int32x8"& $(x.to_array)
proc to_int32x8*(x: seq[SIZE_TYPE]): int32x8 =
  assert x.len == 8 ###
  Vector(x[0].int32, x[1].int32, x[2].int32, x[3].int32, x[4].int32, x[5].int32, x[6].int32, x[7].int32)
############################################
### END int, int32, 8 ###
############################################
##############################################
### BEGIN uint, uint64, 4 ###
##############################################
type uint64x4* {.header: simd, importcpp: "uint64<4>".} = object
type mask_uint64x4* {.header: simd, importcpp: "mask_uint64<4>".} = object
proc Vector*(x0, x1, x2, x3: uint64): uint64x4 {.header: simd, importcpp: "make_uint<uint64<4>>(@)".}
proc splat_uint64x4*(x: SIZE_TYPE): uint64x4 = Vector(x.uint64, x.uint64, x.uint64, x.uint64)
proc to_mask*(x: uint64x4): mask_uint64x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint64x4): Natural = 4
proc extract_0*(x: uint64x4): uint64  {.header: simd, importcpp: "extract<0, 4>(@)"}
proc extract_1*(x: uint64x4): uint64  {.header: simd, importcpp: "extract<1, 4>(@)"}
proc extract_2*(x: uint64x4): uint64  {.header: simd, importcpp: "extract<2, 4>(@)"}
proc extract_3*(x: uint64x4): uint64  {.header: simd, importcpp: "extract<3, 4>(@)"}
proc `[]`*(x: uint64x4, i: Natural): uint64 =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  else:###
    return extract_3(x)###
proc insert_0*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "insert<0, 4>(@)"}
proc insert_1*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "insert<1, 4>(@)"}
proc insert_2*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "insert<2, 4>(@)"}
proc insert_3*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "insert<3, 4>(@)"}
proc `[]=`*(x: var uint64x4, i: Natural, v: uint64) =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  else:###
    x=insert_3(x, v)###
proc to_seq*(x: uint64x4): seq[uint64] = @[x[0], x[1], x[2], x[3]]
proc to_array*(x: uint64x4): auto = [x[0], x[1], x[2], x[3]]
proc `$`*(x: uint64x4): string = "uint64x4"& $(x.to_array)
proc to_uint64x4*(x: seq[SIZE_TYPE]): uint64x4 =
  assert x.len == 4 ###
  Vector(x[0].uint64, x[1].uint64, x[2].uint64, x[3].uint64)
############################################
### END uint, uint64, 4 ###
############################################
##############################################
### BEGIN int, int64, 4 ###
##############################################
type int64x4* {.header: simd, importcpp: "int64<4>".} = object
type mask_int64x4* {.header: simd, importcpp: "mask_int64<4>".} = object
proc Vector*(x0, x1, x2, x3: int64): int64x4 {.header: simd, importcpp: "make_int<int64<4>>(@)".}
proc splat_int64x4*(x: SIZE_TYPE): int64x4 = Vector(x.int64, x.int64, x.int64, x.int64)
proc to_mask*(x: int64x4): mask_int64x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int64x4): Natural = 4
proc extract_0*(x: int64x4): int64  {.header: simd, importcpp: "extract<0, 4>(@)"}
proc extract_1*(x: int64x4): int64  {.header: simd, importcpp: "extract<1, 4>(@)"}
proc extract_2*(x: int64x4): int64  {.header: simd, importcpp: "extract<2, 4>(@)"}
proc extract_3*(x: int64x4): int64  {.header: simd, importcpp: "extract<3, 4>(@)"}
proc `[]`*(x: int64x4, i: Natural): int64 =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  else:###
    return extract_3(x)###
proc insert_0*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "insert<0, 4>(@)"}
proc insert_1*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "insert<1, 4>(@)"}
proc insert_2*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "insert<2, 4>(@)"}
proc insert_3*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "insert<3, 4>(@)"}
proc `[]=`*(x: var int64x4, i: Natural, v: int64) =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  else:###
    x=insert_3(x, v)###
proc to_seq*(x: int64x4): seq[int64] = @[x[0], x[1], x[2], x[3]]
proc to_array*(x: int64x4): auto = [x[0], x[1], x[2], x[3]]
proc `$`*(x: int64x4): string = "int64x4"& $(x.to_array)
proc to_int64x4*(x: seq[SIZE_TYPE]): int64x4 =
  assert x.len == 4 ###
  Vector(x[0].int64, x[1].int64, x[2].int64, x[3].int64)
############################################
### END int, int64, 4 ###
############################################
##############################################
### BEGIN float, float32, 8 ###
##############################################
type float32x8* {.header: simd, importcpp: "float32<8>".} = object
type mask_float32x8* {.header: simd, importcpp: "mask_float32<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: float32): float32x8 {.header: simd, importcpp: "make_float<float32<8>>(@)".}
proc splat_float32x8*(x: SIZE_TYPE): float32x8 = Vector(x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32)
proc to_mask*(x: float32x8): mask_float32x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float32x8): Natural = 8
proc extract_0*(x: float32x8): float32  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: float32x8): float32  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: float32x8): float32  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: float32x8): float32  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: float32x8): float32  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: float32x8): float32  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: float32x8): float32  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: float32x8): float32  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: float32x8, i: Natural): float32 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var float32x8, i: Natural, v: float32) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: float32x8): seq[float32] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: float32x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: float32x8): string = "float32x8"& $(x.to_array)
proc to_float32x8*(x: seq[SIZE_TYPE]): float32x8 =
  assert x.len == 8 ###
  Vector(x[0].float32, x[1].float32, x[2].float32, x[3].float32, x[4].float32, x[5].float32, x[6].float32, x[7].float32)
############################################
### END float, float32, 8 ###
############################################
##############################################
### BEGIN float, float64, 4 ###
##############################################
type float64x4* {.header: simd, importcpp: "float64<4>".} = object
type mask_float64x4* {.header: simd, importcpp: "mask_float64<4>".} = object
proc Vector*(x0, x1, x2, x3: float64): float64x4 {.header: simd, importcpp: "make_float<float64<4>>(@)".}
proc splat_float64x4*(x: SIZE_TYPE): float64x4 = Vector(x.float64, x.float64, x.float64, x.float64)
proc to_mask*(x: float64x4): mask_float64x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float64x4): Natural = 4
proc extract_0*(x: float64x4): float64  {.header: simd, importcpp: "extract<0, 4>(@)"}
proc extract_1*(x: float64x4): float64  {.header: simd, importcpp: "extract<1, 4>(@)"}
proc extract_2*(x: float64x4): float64  {.header: simd, importcpp: "extract<2, 4>(@)"}
proc extract_3*(x: float64x4): float64  {.header: simd, importcpp: "extract<3, 4>(@)"}
proc `[]`*(x: float64x4, i: Natural): float64 =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  else:###
    return extract_3(x)###
proc insert_0*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "insert<0, 4>(@)"}
proc insert_1*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "insert<1, 4>(@)"}
proc insert_2*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "insert<2, 4>(@)"}
proc insert_3*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "insert<3, 4>(@)"}
proc `[]=`*(x: var float64x4, i: Natural, v: float64) =
  assert 0 <= i and i < 4 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  else:###
    x=insert_3(x, v)###
proc to_seq*(x: float64x4): seq[float64] = @[x[0], x[1], x[2], x[3]]
proc to_array*(x: float64x4): auto = [x[0], x[1], x[2], x[3]]
proc `$`*(x: float64x4): string = "float64x4"& $(x.to_array)
proc to_float64x4*(x: seq[SIZE_TYPE]): float64x4 =
  assert x.len == 4 ###
  Vector(x[0].float64, x[1].float64, x[2].float64, x[3].float64)
############################################
### END float, float64, 4 ###
############################################
##############################################
### BEGIN uint, uint8, 64 ###
##############################################
type uint8x64* {.header: simd, importcpp: "uint8<64>".} = object
type mask_uint8x64* {.header: simd, importcpp: "mask_uint8<64>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63: uint8): uint8x64 {.header: simd, importcpp: "make_uint<uint8<64>>(@)".}
proc splat_uint8x64*(x: SIZE_TYPE): uint8x64 = Vector(x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8)
proc to_mask*(x: uint8x64): mask_uint8x64 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint8x64): Natural = 64
proc extract_0*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<0, 64>(@)"}
proc extract_1*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<1, 64>(@)"}
proc extract_2*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<2, 64>(@)"}
proc extract_3*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<3, 64>(@)"}
proc extract_4*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<4, 64>(@)"}
proc extract_5*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<5, 64>(@)"}
proc extract_6*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<6, 64>(@)"}
proc extract_7*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<7, 64>(@)"}
proc extract_8*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<8, 64>(@)"}
proc extract_9*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<9, 64>(@)"}
proc extract_10*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<10, 64>(@)"}
proc extract_11*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<11, 64>(@)"}
proc extract_12*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<12, 64>(@)"}
proc extract_13*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<13, 64>(@)"}
proc extract_14*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<14, 64>(@)"}
proc extract_15*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<15, 64>(@)"}
proc extract_16*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<16, 64>(@)"}
proc extract_17*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<17, 64>(@)"}
proc extract_18*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<18, 64>(@)"}
proc extract_19*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<19, 64>(@)"}
proc extract_20*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<20, 64>(@)"}
proc extract_21*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<21, 64>(@)"}
proc extract_22*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<22, 64>(@)"}
proc extract_23*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<23, 64>(@)"}
proc extract_24*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<24, 64>(@)"}
proc extract_25*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<25, 64>(@)"}
proc extract_26*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<26, 64>(@)"}
proc extract_27*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<27, 64>(@)"}
proc extract_28*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<28, 64>(@)"}
proc extract_29*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<29, 64>(@)"}
proc extract_30*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<30, 64>(@)"}
proc extract_31*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<31, 64>(@)"}
proc extract_32*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<32, 64>(@)"}
proc extract_33*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<33, 64>(@)"}
proc extract_34*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<34, 64>(@)"}
proc extract_35*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<35, 64>(@)"}
proc extract_36*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<36, 64>(@)"}
proc extract_37*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<37, 64>(@)"}
proc extract_38*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<38, 64>(@)"}
proc extract_39*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<39, 64>(@)"}
proc extract_40*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<40, 64>(@)"}
proc extract_41*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<41, 64>(@)"}
proc extract_42*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<42, 64>(@)"}
proc extract_43*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<43, 64>(@)"}
proc extract_44*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<44, 64>(@)"}
proc extract_45*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<45, 64>(@)"}
proc extract_46*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<46, 64>(@)"}
proc extract_47*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<47, 64>(@)"}
proc extract_48*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<48, 64>(@)"}
proc extract_49*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<49, 64>(@)"}
proc extract_50*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<50, 64>(@)"}
proc extract_51*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<51, 64>(@)"}
proc extract_52*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<52, 64>(@)"}
proc extract_53*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<53, 64>(@)"}
proc extract_54*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<54, 64>(@)"}
proc extract_55*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<55, 64>(@)"}
proc extract_56*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<56, 64>(@)"}
proc extract_57*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<57, 64>(@)"}
proc extract_58*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<58, 64>(@)"}
proc extract_59*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<59, 64>(@)"}
proc extract_60*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<60, 64>(@)"}
proc extract_61*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<61, 64>(@)"}
proc extract_62*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<62, 64>(@)"}
proc extract_63*(x: uint8x64): uint8  {.header: simd, importcpp: "extract<63, 64>(@)"}
proc `[]`*(x: uint8x64, i: Natural): uint8 =
  assert 0 <= i and i < 64 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  elif i == 15:###
    return extract_15(x)###
  elif i == 16:###
    return extract_16(x)###
  elif i == 17:###
    return extract_17(x)###
  elif i == 18:###
    return extract_18(x)###
  elif i == 19:###
    return extract_19(x)###
  elif i == 20:###
    return extract_20(x)###
  elif i == 21:###
    return extract_21(x)###
  elif i == 22:###
    return extract_22(x)###
  elif i == 23:###
    return extract_23(x)###
  elif i == 24:###
    return extract_24(x)###
  elif i == 25:###
    return extract_25(x)###
  elif i == 26:###
    return extract_26(x)###
  elif i == 27:###
    return extract_27(x)###
  elif i == 28:###
    return extract_28(x)###
  elif i == 29:###
    return extract_29(x)###
  elif i == 30:###
    return extract_30(x)###
  elif i == 31:###
    return extract_31(x)###
  elif i == 32:###
    return extract_32(x)###
  elif i == 33:###
    return extract_33(x)###
  elif i == 34:###
    return extract_34(x)###
  elif i == 35:###
    return extract_35(x)###
  elif i == 36:###
    return extract_36(x)###
  elif i == 37:###
    return extract_37(x)###
  elif i == 38:###
    return extract_38(x)###
  elif i == 39:###
    return extract_39(x)###
  elif i == 40:###
    return extract_40(x)###
  elif i == 41:###
    return extract_41(x)###
  elif i == 42:###
    return extract_42(x)###
  elif i == 43:###
    return extract_43(x)###
  elif i == 44:###
    return extract_44(x)###
  elif i == 45:###
    return extract_45(x)###
  elif i == 46:###
    return extract_46(x)###
  elif i == 47:###
    return extract_47(x)###
  elif i == 48:###
    return extract_48(x)###
  elif i == 49:###
    return extract_49(x)###
  elif i == 50:###
    return extract_50(x)###
  elif i == 51:###
    return extract_51(x)###
  elif i == 52:###
    return extract_52(x)###
  elif i == 53:###
    return extract_53(x)###
  elif i == 54:###
    return extract_54(x)###
  elif i == 55:###
    return extract_55(x)###
  elif i == 56:###
    return extract_56(x)###
  elif i == 57:###
    return extract_57(x)###
  elif i == 58:###
    return extract_58(x)###
  elif i == 59:###
    return extract_59(x)###
  elif i == 60:###
    return extract_60(x)###
  elif i == 61:###
    return extract_61(x)###
  elif i == 62:###
    return extract_62(x)###
  else:###
    return extract_63(x)###
proc insert_0*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<0, 64>(@)"}
proc insert_1*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<1, 64>(@)"}
proc insert_2*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<2, 64>(@)"}
proc insert_3*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<3, 64>(@)"}
proc insert_4*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<4, 64>(@)"}
proc insert_5*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<5, 64>(@)"}
proc insert_6*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<6, 64>(@)"}
proc insert_7*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<7, 64>(@)"}
proc insert_8*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<8, 64>(@)"}
proc insert_9*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<9, 64>(@)"}
proc insert_10*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<10, 64>(@)"}
proc insert_11*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<11, 64>(@)"}
proc insert_12*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<12, 64>(@)"}
proc insert_13*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<13, 64>(@)"}
proc insert_14*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<14, 64>(@)"}
proc insert_15*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<15, 64>(@)"}
proc insert_16*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<16, 64>(@)"}
proc insert_17*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<17, 64>(@)"}
proc insert_18*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<18, 64>(@)"}
proc insert_19*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<19, 64>(@)"}
proc insert_20*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<20, 64>(@)"}
proc insert_21*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<21, 64>(@)"}
proc insert_22*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<22, 64>(@)"}
proc insert_23*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<23, 64>(@)"}
proc insert_24*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<24, 64>(@)"}
proc insert_25*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<25, 64>(@)"}
proc insert_26*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<26, 64>(@)"}
proc insert_27*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<27, 64>(@)"}
proc insert_28*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<28, 64>(@)"}
proc insert_29*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<29, 64>(@)"}
proc insert_30*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<30, 64>(@)"}
proc insert_31*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<31, 64>(@)"}
proc insert_32*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<32, 64>(@)"}
proc insert_33*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<33, 64>(@)"}
proc insert_34*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<34, 64>(@)"}
proc insert_35*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<35, 64>(@)"}
proc insert_36*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<36, 64>(@)"}
proc insert_37*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<37, 64>(@)"}
proc insert_38*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<38, 64>(@)"}
proc insert_39*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<39, 64>(@)"}
proc insert_40*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<40, 64>(@)"}
proc insert_41*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<41, 64>(@)"}
proc insert_42*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<42, 64>(@)"}
proc insert_43*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<43, 64>(@)"}
proc insert_44*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<44, 64>(@)"}
proc insert_45*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<45, 64>(@)"}
proc insert_46*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<46, 64>(@)"}
proc insert_47*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<47, 64>(@)"}
proc insert_48*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<48, 64>(@)"}
proc insert_49*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<49, 64>(@)"}
proc insert_50*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<50, 64>(@)"}
proc insert_51*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<51, 64>(@)"}
proc insert_52*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<52, 64>(@)"}
proc insert_53*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<53, 64>(@)"}
proc insert_54*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<54, 64>(@)"}
proc insert_55*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<55, 64>(@)"}
proc insert_56*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<56, 64>(@)"}
proc insert_57*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<57, 64>(@)"}
proc insert_58*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<58, 64>(@)"}
proc insert_59*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<59, 64>(@)"}
proc insert_60*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<60, 64>(@)"}
proc insert_61*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<61, 64>(@)"}
proc insert_62*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<62, 64>(@)"}
proc insert_63*(x: var uint8x64, v: uint8): uint8x64 {.header: simd, importcpp: "insert<63, 64>(@)"}
proc `[]=`*(x: var uint8x64, i: Natural, v: uint8) =
  assert 0 <= i and i < 64 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  elif i == 15:###
    x=insert_15(x, v)###
  elif i == 16:###
    x=insert_16(x, v)###
  elif i == 17:###
    x=insert_17(x, v)###
  elif i == 18:###
    x=insert_18(x, v)###
  elif i == 19:###
    x=insert_19(x, v)###
  elif i == 20:###
    x=insert_20(x, v)###
  elif i == 21:###
    x=insert_21(x, v)###
  elif i == 22:###
    x=insert_22(x, v)###
  elif i == 23:###
    x=insert_23(x, v)###
  elif i == 24:###
    x=insert_24(x, v)###
  elif i == 25:###
    x=insert_25(x, v)###
  elif i == 26:###
    x=insert_26(x, v)###
  elif i == 27:###
    x=insert_27(x, v)###
  elif i == 28:###
    x=insert_28(x, v)###
  elif i == 29:###
    x=insert_29(x, v)###
  elif i == 30:###
    x=insert_30(x, v)###
  elif i == 31:###
    x=insert_31(x, v)###
  elif i == 32:###
    x=insert_32(x, v)###
  elif i == 33:###
    x=insert_33(x, v)###
  elif i == 34:###
    x=insert_34(x, v)###
  elif i == 35:###
    x=insert_35(x, v)###
  elif i == 36:###
    x=insert_36(x, v)###
  elif i == 37:###
    x=insert_37(x, v)###
  elif i == 38:###
    x=insert_38(x, v)###
  elif i == 39:###
    x=insert_39(x, v)###
  elif i == 40:###
    x=insert_40(x, v)###
  elif i == 41:###
    x=insert_41(x, v)###
  elif i == 42:###
    x=insert_42(x, v)###
  elif i == 43:###
    x=insert_43(x, v)###
  elif i == 44:###
    x=insert_44(x, v)###
  elif i == 45:###
    x=insert_45(x, v)###
  elif i == 46:###
    x=insert_46(x, v)###
  elif i == 47:###
    x=insert_47(x, v)###
  elif i == 48:###
    x=insert_48(x, v)###
  elif i == 49:###
    x=insert_49(x, v)###
  elif i == 50:###
    x=insert_50(x, v)###
  elif i == 51:###
    x=insert_51(x, v)###
  elif i == 52:###
    x=insert_52(x, v)###
  elif i == 53:###
    x=insert_53(x, v)###
  elif i == 54:###
    x=insert_54(x, v)###
  elif i == 55:###
    x=insert_55(x, v)###
  elif i == 56:###
    x=insert_56(x, v)###
  elif i == 57:###
    x=insert_57(x, v)###
  elif i == 58:###
    x=insert_58(x, v)###
  elif i == 59:###
    x=insert_59(x, v)###
  elif i == 60:###
    x=insert_60(x, v)###
  elif i == 61:###
    x=insert_61(x, v)###
  elif i == 62:###
    x=insert_62(x, v)###
  else:###
    x=insert_63(x, v)###
proc to_seq*(x: uint8x64): seq[uint8] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31], x[32], x[33], x[34], x[35], x[36], x[37], x[38], x[39], x[40], x[41], x[42], x[43], x[44], x[45], x[46], x[47], x[48], x[49], x[50], x[51], x[52], x[53], x[54], x[55], x[56], x[57], x[58], x[59], x[60], x[61], x[62], x[63]]
proc to_array*(x: uint8x64): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31], x[32], x[33], x[34], x[35], x[36], x[37], x[38], x[39], x[40], x[41], x[42], x[43], x[44], x[45], x[46], x[47], x[48], x[49], x[50], x[51], x[52], x[53], x[54], x[55], x[56], x[57], x[58], x[59], x[60], x[61], x[62], x[63]]
proc `$`*(x: uint8x64): string = "uint8x64"& $(x.to_array)
proc to_uint8x64*(x: seq[SIZE_TYPE]): uint8x64 =
  assert x.len == 64 ###
  Vector(x[0].uint8, x[1].uint8, x[2].uint8, x[3].uint8, x[4].uint8, x[5].uint8, x[6].uint8, x[7].uint8, x[8].uint8, x[9].uint8, x[10].uint8, x[11].uint8, x[12].uint8, x[13].uint8, x[14].uint8, x[15].uint8, x[16].uint8, x[17].uint8, x[18].uint8, x[19].uint8, x[20].uint8, x[21].uint8, x[22].uint8, x[23].uint8, x[24].uint8, x[25].uint8, x[26].uint8, x[27].uint8, x[28].uint8, x[29].uint8, x[30].uint8, x[31].uint8, x[32].uint8, x[33].uint8, x[34].uint8, x[35].uint8, x[36].uint8, x[37].uint8, x[38].uint8, x[39].uint8, x[40].uint8, x[41].uint8, x[42].uint8, x[43].uint8, x[44].uint8, x[45].uint8, x[46].uint8, x[47].uint8, x[48].uint8, x[49].uint8, x[50].uint8, x[51].uint8, x[52].uint8, x[53].uint8, x[54].uint8, x[55].uint8, x[56].uint8, x[57].uint8, x[58].uint8, x[59].uint8, x[60].uint8, x[61].uint8, x[62].uint8, x[63].uint8)
############################################
### END uint, uint8, 64 ###
############################################
##############################################
### BEGIN int, int8, 64 ###
##############################################
type int8x64* {.header: simd, importcpp: "int8<64>".} = object
type mask_int8x64* {.header: simd, importcpp: "mask_int8<64>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63: int8): int8x64 {.header: simd, importcpp: "make_int<int8<64>>(@)".}
proc splat_int8x64*(x: SIZE_TYPE): int8x64 = Vector(x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8)
proc to_mask*(x: int8x64): mask_int8x64 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int8x64): Natural = 64
proc extract_0*(x: int8x64): int8  {.header: simd, importcpp: "extract<0, 64>(@)"}
proc extract_1*(x: int8x64): int8  {.header: simd, importcpp: "extract<1, 64>(@)"}
proc extract_2*(x: int8x64): int8  {.header: simd, importcpp: "extract<2, 64>(@)"}
proc extract_3*(x: int8x64): int8  {.header: simd, importcpp: "extract<3, 64>(@)"}
proc extract_4*(x: int8x64): int8  {.header: simd, importcpp: "extract<4, 64>(@)"}
proc extract_5*(x: int8x64): int8  {.header: simd, importcpp: "extract<5, 64>(@)"}
proc extract_6*(x: int8x64): int8  {.header: simd, importcpp: "extract<6, 64>(@)"}
proc extract_7*(x: int8x64): int8  {.header: simd, importcpp: "extract<7, 64>(@)"}
proc extract_8*(x: int8x64): int8  {.header: simd, importcpp: "extract<8, 64>(@)"}
proc extract_9*(x: int8x64): int8  {.header: simd, importcpp: "extract<9, 64>(@)"}
proc extract_10*(x: int8x64): int8  {.header: simd, importcpp: "extract<10, 64>(@)"}
proc extract_11*(x: int8x64): int8  {.header: simd, importcpp: "extract<11, 64>(@)"}
proc extract_12*(x: int8x64): int8  {.header: simd, importcpp: "extract<12, 64>(@)"}
proc extract_13*(x: int8x64): int8  {.header: simd, importcpp: "extract<13, 64>(@)"}
proc extract_14*(x: int8x64): int8  {.header: simd, importcpp: "extract<14, 64>(@)"}
proc extract_15*(x: int8x64): int8  {.header: simd, importcpp: "extract<15, 64>(@)"}
proc extract_16*(x: int8x64): int8  {.header: simd, importcpp: "extract<16, 64>(@)"}
proc extract_17*(x: int8x64): int8  {.header: simd, importcpp: "extract<17, 64>(@)"}
proc extract_18*(x: int8x64): int8  {.header: simd, importcpp: "extract<18, 64>(@)"}
proc extract_19*(x: int8x64): int8  {.header: simd, importcpp: "extract<19, 64>(@)"}
proc extract_20*(x: int8x64): int8  {.header: simd, importcpp: "extract<20, 64>(@)"}
proc extract_21*(x: int8x64): int8  {.header: simd, importcpp: "extract<21, 64>(@)"}
proc extract_22*(x: int8x64): int8  {.header: simd, importcpp: "extract<22, 64>(@)"}
proc extract_23*(x: int8x64): int8  {.header: simd, importcpp: "extract<23, 64>(@)"}
proc extract_24*(x: int8x64): int8  {.header: simd, importcpp: "extract<24, 64>(@)"}
proc extract_25*(x: int8x64): int8  {.header: simd, importcpp: "extract<25, 64>(@)"}
proc extract_26*(x: int8x64): int8  {.header: simd, importcpp: "extract<26, 64>(@)"}
proc extract_27*(x: int8x64): int8  {.header: simd, importcpp: "extract<27, 64>(@)"}
proc extract_28*(x: int8x64): int8  {.header: simd, importcpp: "extract<28, 64>(@)"}
proc extract_29*(x: int8x64): int8  {.header: simd, importcpp: "extract<29, 64>(@)"}
proc extract_30*(x: int8x64): int8  {.header: simd, importcpp: "extract<30, 64>(@)"}
proc extract_31*(x: int8x64): int8  {.header: simd, importcpp: "extract<31, 64>(@)"}
proc extract_32*(x: int8x64): int8  {.header: simd, importcpp: "extract<32, 64>(@)"}
proc extract_33*(x: int8x64): int8  {.header: simd, importcpp: "extract<33, 64>(@)"}
proc extract_34*(x: int8x64): int8  {.header: simd, importcpp: "extract<34, 64>(@)"}
proc extract_35*(x: int8x64): int8  {.header: simd, importcpp: "extract<35, 64>(@)"}
proc extract_36*(x: int8x64): int8  {.header: simd, importcpp: "extract<36, 64>(@)"}
proc extract_37*(x: int8x64): int8  {.header: simd, importcpp: "extract<37, 64>(@)"}
proc extract_38*(x: int8x64): int8  {.header: simd, importcpp: "extract<38, 64>(@)"}
proc extract_39*(x: int8x64): int8  {.header: simd, importcpp: "extract<39, 64>(@)"}
proc extract_40*(x: int8x64): int8  {.header: simd, importcpp: "extract<40, 64>(@)"}
proc extract_41*(x: int8x64): int8  {.header: simd, importcpp: "extract<41, 64>(@)"}
proc extract_42*(x: int8x64): int8  {.header: simd, importcpp: "extract<42, 64>(@)"}
proc extract_43*(x: int8x64): int8  {.header: simd, importcpp: "extract<43, 64>(@)"}
proc extract_44*(x: int8x64): int8  {.header: simd, importcpp: "extract<44, 64>(@)"}
proc extract_45*(x: int8x64): int8  {.header: simd, importcpp: "extract<45, 64>(@)"}
proc extract_46*(x: int8x64): int8  {.header: simd, importcpp: "extract<46, 64>(@)"}
proc extract_47*(x: int8x64): int8  {.header: simd, importcpp: "extract<47, 64>(@)"}
proc extract_48*(x: int8x64): int8  {.header: simd, importcpp: "extract<48, 64>(@)"}
proc extract_49*(x: int8x64): int8  {.header: simd, importcpp: "extract<49, 64>(@)"}
proc extract_50*(x: int8x64): int8  {.header: simd, importcpp: "extract<50, 64>(@)"}
proc extract_51*(x: int8x64): int8  {.header: simd, importcpp: "extract<51, 64>(@)"}
proc extract_52*(x: int8x64): int8  {.header: simd, importcpp: "extract<52, 64>(@)"}
proc extract_53*(x: int8x64): int8  {.header: simd, importcpp: "extract<53, 64>(@)"}
proc extract_54*(x: int8x64): int8  {.header: simd, importcpp: "extract<54, 64>(@)"}
proc extract_55*(x: int8x64): int8  {.header: simd, importcpp: "extract<55, 64>(@)"}
proc extract_56*(x: int8x64): int8  {.header: simd, importcpp: "extract<56, 64>(@)"}
proc extract_57*(x: int8x64): int8  {.header: simd, importcpp: "extract<57, 64>(@)"}
proc extract_58*(x: int8x64): int8  {.header: simd, importcpp: "extract<58, 64>(@)"}
proc extract_59*(x: int8x64): int8  {.header: simd, importcpp: "extract<59, 64>(@)"}
proc extract_60*(x: int8x64): int8  {.header: simd, importcpp: "extract<60, 64>(@)"}
proc extract_61*(x: int8x64): int8  {.header: simd, importcpp: "extract<61, 64>(@)"}
proc extract_62*(x: int8x64): int8  {.header: simd, importcpp: "extract<62, 64>(@)"}
proc extract_63*(x: int8x64): int8  {.header: simd, importcpp: "extract<63, 64>(@)"}
proc `[]`*(x: int8x64, i: Natural): int8 =
  assert 0 <= i and i < 64 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  elif i == 15:###
    return extract_15(x)###
  elif i == 16:###
    return extract_16(x)###
  elif i == 17:###
    return extract_17(x)###
  elif i == 18:###
    return extract_18(x)###
  elif i == 19:###
    return extract_19(x)###
  elif i == 20:###
    return extract_20(x)###
  elif i == 21:###
    return extract_21(x)###
  elif i == 22:###
    return extract_22(x)###
  elif i == 23:###
    return extract_23(x)###
  elif i == 24:###
    return extract_24(x)###
  elif i == 25:###
    return extract_25(x)###
  elif i == 26:###
    return extract_26(x)###
  elif i == 27:###
    return extract_27(x)###
  elif i == 28:###
    return extract_28(x)###
  elif i == 29:###
    return extract_29(x)###
  elif i == 30:###
    return extract_30(x)###
  elif i == 31:###
    return extract_31(x)###
  elif i == 32:###
    return extract_32(x)###
  elif i == 33:###
    return extract_33(x)###
  elif i == 34:###
    return extract_34(x)###
  elif i == 35:###
    return extract_35(x)###
  elif i == 36:###
    return extract_36(x)###
  elif i == 37:###
    return extract_37(x)###
  elif i == 38:###
    return extract_38(x)###
  elif i == 39:###
    return extract_39(x)###
  elif i == 40:###
    return extract_40(x)###
  elif i == 41:###
    return extract_41(x)###
  elif i == 42:###
    return extract_42(x)###
  elif i == 43:###
    return extract_43(x)###
  elif i == 44:###
    return extract_44(x)###
  elif i == 45:###
    return extract_45(x)###
  elif i == 46:###
    return extract_46(x)###
  elif i == 47:###
    return extract_47(x)###
  elif i == 48:###
    return extract_48(x)###
  elif i == 49:###
    return extract_49(x)###
  elif i == 50:###
    return extract_50(x)###
  elif i == 51:###
    return extract_51(x)###
  elif i == 52:###
    return extract_52(x)###
  elif i == 53:###
    return extract_53(x)###
  elif i == 54:###
    return extract_54(x)###
  elif i == 55:###
    return extract_55(x)###
  elif i == 56:###
    return extract_56(x)###
  elif i == 57:###
    return extract_57(x)###
  elif i == 58:###
    return extract_58(x)###
  elif i == 59:###
    return extract_59(x)###
  elif i == 60:###
    return extract_60(x)###
  elif i == 61:###
    return extract_61(x)###
  elif i == 62:###
    return extract_62(x)###
  else:###
    return extract_63(x)###
proc insert_0*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<0, 64>(@)"}
proc insert_1*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<1, 64>(@)"}
proc insert_2*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<2, 64>(@)"}
proc insert_3*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<3, 64>(@)"}
proc insert_4*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<4, 64>(@)"}
proc insert_5*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<5, 64>(@)"}
proc insert_6*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<6, 64>(@)"}
proc insert_7*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<7, 64>(@)"}
proc insert_8*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<8, 64>(@)"}
proc insert_9*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<9, 64>(@)"}
proc insert_10*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<10, 64>(@)"}
proc insert_11*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<11, 64>(@)"}
proc insert_12*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<12, 64>(@)"}
proc insert_13*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<13, 64>(@)"}
proc insert_14*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<14, 64>(@)"}
proc insert_15*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<15, 64>(@)"}
proc insert_16*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<16, 64>(@)"}
proc insert_17*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<17, 64>(@)"}
proc insert_18*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<18, 64>(@)"}
proc insert_19*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<19, 64>(@)"}
proc insert_20*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<20, 64>(@)"}
proc insert_21*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<21, 64>(@)"}
proc insert_22*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<22, 64>(@)"}
proc insert_23*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<23, 64>(@)"}
proc insert_24*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<24, 64>(@)"}
proc insert_25*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<25, 64>(@)"}
proc insert_26*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<26, 64>(@)"}
proc insert_27*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<27, 64>(@)"}
proc insert_28*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<28, 64>(@)"}
proc insert_29*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<29, 64>(@)"}
proc insert_30*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<30, 64>(@)"}
proc insert_31*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<31, 64>(@)"}
proc insert_32*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<32, 64>(@)"}
proc insert_33*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<33, 64>(@)"}
proc insert_34*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<34, 64>(@)"}
proc insert_35*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<35, 64>(@)"}
proc insert_36*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<36, 64>(@)"}
proc insert_37*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<37, 64>(@)"}
proc insert_38*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<38, 64>(@)"}
proc insert_39*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<39, 64>(@)"}
proc insert_40*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<40, 64>(@)"}
proc insert_41*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<41, 64>(@)"}
proc insert_42*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<42, 64>(@)"}
proc insert_43*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<43, 64>(@)"}
proc insert_44*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<44, 64>(@)"}
proc insert_45*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<45, 64>(@)"}
proc insert_46*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<46, 64>(@)"}
proc insert_47*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<47, 64>(@)"}
proc insert_48*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<48, 64>(@)"}
proc insert_49*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<49, 64>(@)"}
proc insert_50*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<50, 64>(@)"}
proc insert_51*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<51, 64>(@)"}
proc insert_52*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<52, 64>(@)"}
proc insert_53*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<53, 64>(@)"}
proc insert_54*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<54, 64>(@)"}
proc insert_55*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<55, 64>(@)"}
proc insert_56*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<56, 64>(@)"}
proc insert_57*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<57, 64>(@)"}
proc insert_58*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<58, 64>(@)"}
proc insert_59*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<59, 64>(@)"}
proc insert_60*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<60, 64>(@)"}
proc insert_61*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<61, 64>(@)"}
proc insert_62*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<62, 64>(@)"}
proc insert_63*(x: var int8x64, v: int8): int8x64 {.header: simd, importcpp: "insert<63, 64>(@)"}
proc `[]=`*(x: var int8x64, i: Natural, v: int8) =
  assert 0 <= i and i < 64 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  elif i == 15:###
    x=insert_15(x, v)###
  elif i == 16:###
    x=insert_16(x, v)###
  elif i == 17:###
    x=insert_17(x, v)###
  elif i == 18:###
    x=insert_18(x, v)###
  elif i == 19:###
    x=insert_19(x, v)###
  elif i == 20:###
    x=insert_20(x, v)###
  elif i == 21:###
    x=insert_21(x, v)###
  elif i == 22:###
    x=insert_22(x, v)###
  elif i == 23:###
    x=insert_23(x, v)###
  elif i == 24:###
    x=insert_24(x, v)###
  elif i == 25:###
    x=insert_25(x, v)###
  elif i == 26:###
    x=insert_26(x, v)###
  elif i == 27:###
    x=insert_27(x, v)###
  elif i == 28:###
    x=insert_28(x, v)###
  elif i == 29:###
    x=insert_29(x, v)###
  elif i == 30:###
    x=insert_30(x, v)###
  elif i == 31:###
    x=insert_31(x, v)###
  elif i == 32:###
    x=insert_32(x, v)###
  elif i == 33:###
    x=insert_33(x, v)###
  elif i == 34:###
    x=insert_34(x, v)###
  elif i == 35:###
    x=insert_35(x, v)###
  elif i == 36:###
    x=insert_36(x, v)###
  elif i == 37:###
    x=insert_37(x, v)###
  elif i == 38:###
    x=insert_38(x, v)###
  elif i == 39:###
    x=insert_39(x, v)###
  elif i == 40:###
    x=insert_40(x, v)###
  elif i == 41:###
    x=insert_41(x, v)###
  elif i == 42:###
    x=insert_42(x, v)###
  elif i == 43:###
    x=insert_43(x, v)###
  elif i == 44:###
    x=insert_44(x, v)###
  elif i == 45:###
    x=insert_45(x, v)###
  elif i == 46:###
    x=insert_46(x, v)###
  elif i == 47:###
    x=insert_47(x, v)###
  elif i == 48:###
    x=insert_48(x, v)###
  elif i == 49:###
    x=insert_49(x, v)###
  elif i == 50:###
    x=insert_50(x, v)###
  elif i == 51:###
    x=insert_51(x, v)###
  elif i == 52:###
    x=insert_52(x, v)###
  elif i == 53:###
    x=insert_53(x, v)###
  elif i == 54:###
    x=insert_54(x, v)###
  elif i == 55:###
    x=insert_55(x, v)###
  elif i == 56:###
    x=insert_56(x, v)###
  elif i == 57:###
    x=insert_57(x, v)###
  elif i == 58:###
    x=insert_58(x, v)###
  elif i == 59:###
    x=insert_59(x, v)###
  elif i == 60:###
    x=insert_60(x, v)###
  elif i == 61:###
    x=insert_61(x, v)###
  elif i == 62:###
    x=insert_62(x, v)###
  else:###
    x=insert_63(x, v)###
proc to_seq*(x: int8x64): seq[int8] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31], x[32], x[33], x[34], x[35], x[36], x[37], x[38], x[39], x[40], x[41], x[42], x[43], x[44], x[45], x[46], x[47], x[48], x[49], x[50], x[51], x[52], x[53], x[54], x[55], x[56], x[57], x[58], x[59], x[60], x[61], x[62], x[63]]
proc to_array*(x: int8x64): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31], x[32], x[33], x[34], x[35], x[36], x[37], x[38], x[39], x[40], x[41], x[42], x[43], x[44], x[45], x[46], x[47], x[48], x[49], x[50], x[51], x[52], x[53], x[54], x[55], x[56], x[57], x[58], x[59], x[60], x[61], x[62], x[63]]
proc `$`*(x: int8x64): string = "int8x64"& $(x.to_array)
proc to_int8x64*(x: seq[SIZE_TYPE]): int8x64 =
  assert x.len == 64 ###
  Vector(x[0].int8, x[1].int8, x[2].int8, x[3].int8, x[4].int8, x[5].int8, x[6].int8, x[7].int8, x[8].int8, x[9].int8, x[10].int8, x[11].int8, x[12].int8, x[13].int8, x[14].int8, x[15].int8, x[16].int8, x[17].int8, x[18].int8, x[19].int8, x[20].int8, x[21].int8, x[22].int8, x[23].int8, x[24].int8, x[25].int8, x[26].int8, x[27].int8, x[28].int8, x[29].int8, x[30].int8, x[31].int8, x[32].int8, x[33].int8, x[34].int8, x[35].int8, x[36].int8, x[37].int8, x[38].int8, x[39].int8, x[40].int8, x[41].int8, x[42].int8, x[43].int8, x[44].int8, x[45].int8, x[46].int8, x[47].int8, x[48].int8, x[49].int8, x[50].int8, x[51].int8, x[52].int8, x[53].int8, x[54].int8, x[55].int8, x[56].int8, x[57].int8, x[58].int8, x[59].int8, x[60].int8, x[61].int8, x[62].int8, x[63].int8)
############################################
### END int, int8, 64 ###
############################################
##############################################
### BEGIN uint, uint16, 32 ###
##############################################
type uint16x32* {.header: simd, importcpp: "uint16<32>".} = object
type mask_uint16x32* {.header: simd, importcpp: "mask_uint16<32>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: uint16): uint16x32 {.header: simd, importcpp: "make_uint<uint16<32>>(@)".}
proc splat_uint16x32*(x: SIZE_TYPE): uint16x32 = Vector(x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16)
proc to_mask*(x: uint16x32): mask_uint16x32 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint16x32): Natural = 32
proc extract_0*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<0, 32>(@)"}
proc extract_1*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<1, 32>(@)"}
proc extract_2*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<2, 32>(@)"}
proc extract_3*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<3, 32>(@)"}
proc extract_4*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<4, 32>(@)"}
proc extract_5*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<5, 32>(@)"}
proc extract_6*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<6, 32>(@)"}
proc extract_7*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<7, 32>(@)"}
proc extract_8*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<8, 32>(@)"}
proc extract_9*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<9, 32>(@)"}
proc extract_10*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<10, 32>(@)"}
proc extract_11*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<11, 32>(@)"}
proc extract_12*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<12, 32>(@)"}
proc extract_13*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<13, 32>(@)"}
proc extract_14*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<14, 32>(@)"}
proc extract_15*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<15, 32>(@)"}
proc extract_16*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<16, 32>(@)"}
proc extract_17*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<17, 32>(@)"}
proc extract_18*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<18, 32>(@)"}
proc extract_19*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<19, 32>(@)"}
proc extract_20*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<20, 32>(@)"}
proc extract_21*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<21, 32>(@)"}
proc extract_22*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<22, 32>(@)"}
proc extract_23*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<23, 32>(@)"}
proc extract_24*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<24, 32>(@)"}
proc extract_25*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<25, 32>(@)"}
proc extract_26*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<26, 32>(@)"}
proc extract_27*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<27, 32>(@)"}
proc extract_28*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<28, 32>(@)"}
proc extract_29*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<29, 32>(@)"}
proc extract_30*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<30, 32>(@)"}
proc extract_31*(x: uint16x32): uint16  {.header: simd, importcpp: "extract<31, 32>(@)"}
proc `[]`*(x: uint16x32, i: Natural): uint16 =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  elif i == 15:###
    return extract_15(x)###
  elif i == 16:###
    return extract_16(x)###
  elif i == 17:###
    return extract_17(x)###
  elif i == 18:###
    return extract_18(x)###
  elif i == 19:###
    return extract_19(x)###
  elif i == 20:###
    return extract_20(x)###
  elif i == 21:###
    return extract_21(x)###
  elif i == 22:###
    return extract_22(x)###
  elif i == 23:###
    return extract_23(x)###
  elif i == 24:###
    return extract_24(x)###
  elif i == 25:###
    return extract_25(x)###
  elif i == 26:###
    return extract_26(x)###
  elif i == 27:###
    return extract_27(x)###
  elif i == 28:###
    return extract_28(x)###
  elif i == 29:###
    return extract_29(x)###
  elif i == 30:###
    return extract_30(x)###
  else:###
    return extract_31(x)###
proc insert_0*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<0, 32>(@)"}
proc insert_1*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<1, 32>(@)"}
proc insert_2*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<2, 32>(@)"}
proc insert_3*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<3, 32>(@)"}
proc insert_4*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<4, 32>(@)"}
proc insert_5*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<5, 32>(@)"}
proc insert_6*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<6, 32>(@)"}
proc insert_7*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<7, 32>(@)"}
proc insert_8*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<8, 32>(@)"}
proc insert_9*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<9, 32>(@)"}
proc insert_10*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<10, 32>(@)"}
proc insert_11*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<11, 32>(@)"}
proc insert_12*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<12, 32>(@)"}
proc insert_13*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<13, 32>(@)"}
proc insert_14*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<14, 32>(@)"}
proc insert_15*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<15, 32>(@)"}
proc insert_16*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<16, 32>(@)"}
proc insert_17*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<17, 32>(@)"}
proc insert_18*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<18, 32>(@)"}
proc insert_19*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<19, 32>(@)"}
proc insert_20*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<20, 32>(@)"}
proc insert_21*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<21, 32>(@)"}
proc insert_22*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<22, 32>(@)"}
proc insert_23*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<23, 32>(@)"}
proc insert_24*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<24, 32>(@)"}
proc insert_25*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<25, 32>(@)"}
proc insert_26*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<26, 32>(@)"}
proc insert_27*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<27, 32>(@)"}
proc insert_28*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<28, 32>(@)"}
proc insert_29*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<29, 32>(@)"}
proc insert_30*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<30, 32>(@)"}
proc insert_31*(x: var uint16x32, v: uint16): uint16x32 {.header: simd, importcpp: "insert<31, 32>(@)"}
proc `[]=`*(x: var uint16x32, i: Natural, v: uint16) =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  elif i == 15:###
    x=insert_15(x, v)###
  elif i == 16:###
    x=insert_16(x, v)###
  elif i == 17:###
    x=insert_17(x, v)###
  elif i == 18:###
    x=insert_18(x, v)###
  elif i == 19:###
    x=insert_19(x, v)###
  elif i == 20:###
    x=insert_20(x, v)###
  elif i == 21:###
    x=insert_21(x, v)###
  elif i == 22:###
    x=insert_22(x, v)###
  elif i == 23:###
    x=insert_23(x, v)###
  elif i == 24:###
    x=insert_24(x, v)###
  elif i == 25:###
    x=insert_25(x, v)###
  elif i == 26:###
    x=insert_26(x, v)###
  elif i == 27:###
    x=insert_27(x, v)###
  elif i == 28:###
    x=insert_28(x, v)###
  elif i == 29:###
    x=insert_29(x, v)###
  elif i == 30:###
    x=insert_30(x, v)###
  else:###
    x=insert_31(x, v)###
proc to_seq*(x: uint16x32): seq[uint16] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc to_array*(x: uint16x32): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc `$`*(x: uint16x32): string = "uint16x32"& $(x.to_array)
proc to_uint16x32*(x: seq[SIZE_TYPE]): uint16x32 =
  assert x.len == 32 ###
  Vector(x[0].uint16, x[1].uint16, x[2].uint16, x[3].uint16, x[4].uint16, x[5].uint16, x[6].uint16, x[7].uint16, x[8].uint16, x[9].uint16, x[10].uint16, x[11].uint16, x[12].uint16, x[13].uint16, x[14].uint16, x[15].uint16, x[16].uint16, x[17].uint16, x[18].uint16, x[19].uint16, x[20].uint16, x[21].uint16, x[22].uint16, x[23].uint16, x[24].uint16, x[25].uint16, x[26].uint16, x[27].uint16, x[28].uint16, x[29].uint16, x[30].uint16, x[31].uint16)
############################################
### END uint, uint16, 32 ###
############################################
##############################################
### BEGIN int, int16, 32 ###
##############################################
type int16x32* {.header: simd, importcpp: "int16<32>".} = object
type mask_int16x32* {.header: simd, importcpp: "mask_int16<32>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31: int16): int16x32 {.header: simd, importcpp: "make_int<int16<32>>(@)".}
proc splat_int16x32*(x: SIZE_TYPE): int16x32 = Vector(x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16)
proc to_mask*(x: int16x32): mask_int16x32 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int16x32): Natural = 32
proc extract_0*(x: int16x32): int16  {.header: simd, importcpp: "extract<0, 32>(@)"}
proc extract_1*(x: int16x32): int16  {.header: simd, importcpp: "extract<1, 32>(@)"}
proc extract_2*(x: int16x32): int16  {.header: simd, importcpp: "extract<2, 32>(@)"}
proc extract_3*(x: int16x32): int16  {.header: simd, importcpp: "extract<3, 32>(@)"}
proc extract_4*(x: int16x32): int16  {.header: simd, importcpp: "extract<4, 32>(@)"}
proc extract_5*(x: int16x32): int16  {.header: simd, importcpp: "extract<5, 32>(@)"}
proc extract_6*(x: int16x32): int16  {.header: simd, importcpp: "extract<6, 32>(@)"}
proc extract_7*(x: int16x32): int16  {.header: simd, importcpp: "extract<7, 32>(@)"}
proc extract_8*(x: int16x32): int16  {.header: simd, importcpp: "extract<8, 32>(@)"}
proc extract_9*(x: int16x32): int16  {.header: simd, importcpp: "extract<9, 32>(@)"}
proc extract_10*(x: int16x32): int16  {.header: simd, importcpp: "extract<10, 32>(@)"}
proc extract_11*(x: int16x32): int16  {.header: simd, importcpp: "extract<11, 32>(@)"}
proc extract_12*(x: int16x32): int16  {.header: simd, importcpp: "extract<12, 32>(@)"}
proc extract_13*(x: int16x32): int16  {.header: simd, importcpp: "extract<13, 32>(@)"}
proc extract_14*(x: int16x32): int16  {.header: simd, importcpp: "extract<14, 32>(@)"}
proc extract_15*(x: int16x32): int16  {.header: simd, importcpp: "extract<15, 32>(@)"}
proc extract_16*(x: int16x32): int16  {.header: simd, importcpp: "extract<16, 32>(@)"}
proc extract_17*(x: int16x32): int16  {.header: simd, importcpp: "extract<17, 32>(@)"}
proc extract_18*(x: int16x32): int16  {.header: simd, importcpp: "extract<18, 32>(@)"}
proc extract_19*(x: int16x32): int16  {.header: simd, importcpp: "extract<19, 32>(@)"}
proc extract_20*(x: int16x32): int16  {.header: simd, importcpp: "extract<20, 32>(@)"}
proc extract_21*(x: int16x32): int16  {.header: simd, importcpp: "extract<21, 32>(@)"}
proc extract_22*(x: int16x32): int16  {.header: simd, importcpp: "extract<22, 32>(@)"}
proc extract_23*(x: int16x32): int16  {.header: simd, importcpp: "extract<23, 32>(@)"}
proc extract_24*(x: int16x32): int16  {.header: simd, importcpp: "extract<24, 32>(@)"}
proc extract_25*(x: int16x32): int16  {.header: simd, importcpp: "extract<25, 32>(@)"}
proc extract_26*(x: int16x32): int16  {.header: simd, importcpp: "extract<26, 32>(@)"}
proc extract_27*(x: int16x32): int16  {.header: simd, importcpp: "extract<27, 32>(@)"}
proc extract_28*(x: int16x32): int16  {.header: simd, importcpp: "extract<28, 32>(@)"}
proc extract_29*(x: int16x32): int16  {.header: simd, importcpp: "extract<29, 32>(@)"}
proc extract_30*(x: int16x32): int16  {.header: simd, importcpp: "extract<30, 32>(@)"}
proc extract_31*(x: int16x32): int16  {.header: simd, importcpp: "extract<31, 32>(@)"}
proc `[]`*(x: int16x32, i: Natural): int16 =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  elif i == 15:###
    return extract_15(x)###
  elif i == 16:###
    return extract_16(x)###
  elif i == 17:###
    return extract_17(x)###
  elif i == 18:###
    return extract_18(x)###
  elif i == 19:###
    return extract_19(x)###
  elif i == 20:###
    return extract_20(x)###
  elif i == 21:###
    return extract_21(x)###
  elif i == 22:###
    return extract_22(x)###
  elif i == 23:###
    return extract_23(x)###
  elif i == 24:###
    return extract_24(x)###
  elif i == 25:###
    return extract_25(x)###
  elif i == 26:###
    return extract_26(x)###
  elif i == 27:###
    return extract_27(x)###
  elif i == 28:###
    return extract_28(x)###
  elif i == 29:###
    return extract_29(x)###
  elif i == 30:###
    return extract_30(x)###
  else:###
    return extract_31(x)###
proc insert_0*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<0, 32>(@)"}
proc insert_1*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<1, 32>(@)"}
proc insert_2*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<2, 32>(@)"}
proc insert_3*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<3, 32>(@)"}
proc insert_4*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<4, 32>(@)"}
proc insert_5*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<5, 32>(@)"}
proc insert_6*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<6, 32>(@)"}
proc insert_7*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<7, 32>(@)"}
proc insert_8*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<8, 32>(@)"}
proc insert_9*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<9, 32>(@)"}
proc insert_10*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<10, 32>(@)"}
proc insert_11*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<11, 32>(@)"}
proc insert_12*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<12, 32>(@)"}
proc insert_13*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<13, 32>(@)"}
proc insert_14*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<14, 32>(@)"}
proc insert_15*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<15, 32>(@)"}
proc insert_16*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<16, 32>(@)"}
proc insert_17*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<17, 32>(@)"}
proc insert_18*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<18, 32>(@)"}
proc insert_19*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<19, 32>(@)"}
proc insert_20*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<20, 32>(@)"}
proc insert_21*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<21, 32>(@)"}
proc insert_22*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<22, 32>(@)"}
proc insert_23*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<23, 32>(@)"}
proc insert_24*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<24, 32>(@)"}
proc insert_25*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<25, 32>(@)"}
proc insert_26*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<26, 32>(@)"}
proc insert_27*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<27, 32>(@)"}
proc insert_28*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<28, 32>(@)"}
proc insert_29*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<29, 32>(@)"}
proc insert_30*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<30, 32>(@)"}
proc insert_31*(x: var int16x32, v: int16): int16x32 {.header: simd, importcpp: "insert<31, 32>(@)"}
proc `[]=`*(x: var int16x32, i: Natural, v: int16) =
  assert 0 <= i and i < 32 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  elif i == 15:###
    x=insert_15(x, v)###
  elif i == 16:###
    x=insert_16(x, v)###
  elif i == 17:###
    x=insert_17(x, v)###
  elif i == 18:###
    x=insert_18(x, v)###
  elif i == 19:###
    x=insert_19(x, v)###
  elif i == 20:###
    x=insert_20(x, v)###
  elif i == 21:###
    x=insert_21(x, v)###
  elif i == 22:###
    x=insert_22(x, v)###
  elif i == 23:###
    x=insert_23(x, v)###
  elif i == 24:###
    x=insert_24(x, v)###
  elif i == 25:###
    x=insert_25(x, v)###
  elif i == 26:###
    x=insert_26(x, v)###
  elif i == 27:###
    x=insert_27(x, v)###
  elif i == 28:###
    x=insert_28(x, v)###
  elif i == 29:###
    x=insert_29(x, v)###
  elif i == 30:###
    x=insert_30(x, v)###
  else:###
    x=insert_31(x, v)###
proc to_seq*(x: int16x32): seq[int16] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc to_array*(x: int16x32): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15], x[16], x[17], x[18], x[19], x[20], x[21], x[22], x[23], x[24], x[25], x[26], x[27], x[28], x[29], x[30], x[31]]
proc `$`*(x: int16x32): string = "int16x32"& $(x.to_array)
proc to_int16x32*(x: seq[SIZE_TYPE]): int16x32 =
  assert x.len == 32 ###
  Vector(x[0].int16, x[1].int16, x[2].int16, x[3].int16, x[4].int16, x[5].int16, x[6].int16, x[7].int16, x[8].int16, x[9].int16, x[10].int16, x[11].int16, x[12].int16, x[13].int16, x[14].int16, x[15].int16, x[16].int16, x[17].int16, x[18].int16, x[19].int16, x[20].int16, x[21].int16, x[22].int16, x[23].int16, x[24].int16, x[25].int16, x[26].int16, x[27].int16, x[28].int16, x[29].int16, x[30].int16, x[31].int16)
############################################
### END int, int16, 32 ###
############################################
##############################################
### BEGIN uint, uint32, 16 ###
##############################################
type uint32x16* {.header: simd, importcpp: "uint32<16>".} = object
type mask_uint32x16* {.header: simd, importcpp: "mask_uint32<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint32): uint32x16 {.header: simd, importcpp: "make_uint<uint32<16>>(@)".}
proc splat_uint32x16*(x: SIZE_TYPE): uint32x16 = Vector(x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32)
proc to_mask*(x: uint32x16): mask_uint32x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint32x16): Natural = 16
proc extract_0*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: uint32x16): uint32  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: uint32x16, i: Natural): uint32 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var uint32x16, i: Natural, v: uint32) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: uint32x16): seq[uint32] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: uint32x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: uint32x16): string = "uint32x16"& $(x.to_array)
proc to_uint32x16*(x: seq[SIZE_TYPE]): uint32x16 =
  assert x.len == 16 ###
  Vector(x[0].uint32, x[1].uint32, x[2].uint32, x[3].uint32, x[4].uint32, x[5].uint32, x[6].uint32, x[7].uint32, x[8].uint32, x[9].uint32, x[10].uint32, x[11].uint32, x[12].uint32, x[13].uint32, x[14].uint32, x[15].uint32)
############################################
### END uint, uint32, 16 ###
############################################
##############################################
### BEGIN int, int32, 16 ###
##############################################
type int32x16* {.header: simd, importcpp: "int32<16>".} = object
type mask_int32x16* {.header: simd, importcpp: "mask_int32<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int32): int32x16 {.header: simd, importcpp: "make_int<int32<16>>(@)".}
proc splat_int32x16*(x: SIZE_TYPE): int32x16 = Vector(x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32)
proc to_mask*(x: int32x16): mask_int32x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int32x16): Natural = 16
proc extract_0*(x: int32x16): int32  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: int32x16): int32  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: int32x16): int32  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: int32x16): int32  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: int32x16): int32  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: int32x16): int32  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: int32x16): int32  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: int32x16): int32  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: int32x16): int32  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: int32x16): int32  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: int32x16): int32  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: int32x16): int32  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: int32x16): int32  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: int32x16): int32  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: int32x16): int32  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: int32x16): int32  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: int32x16, i: Natural): int32 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var int32x16, i: Natural, v: int32) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: int32x16): seq[int32] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: int32x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: int32x16): string = "int32x16"& $(x.to_array)
proc to_int32x16*(x: seq[SIZE_TYPE]): int32x16 =
  assert x.len == 16 ###
  Vector(x[0].int32, x[1].int32, x[2].int32, x[3].int32, x[4].int32, x[5].int32, x[6].int32, x[7].int32, x[8].int32, x[9].int32, x[10].int32, x[11].int32, x[12].int32, x[13].int32, x[14].int32, x[15].int32)
############################################
### END int, int32, 16 ###
############################################
##############################################
### BEGIN uint, uint64, 8 ###
##############################################
type uint64x8* {.header: simd, importcpp: "uint64<8>".} = object
type mask_uint64x8* {.header: simd, importcpp: "mask_uint64<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: uint64): uint64x8 {.header: simd, importcpp: "make_uint<uint64<8>>(@)".}
proc splat_uint64x8*(x: SIZE_TYPE): uint64x8 = Vector(x.uint64, x.uint64, x.uint64, x.uint64, x.uint64, x.uint64, x.uint64, x.uint64)
proc to_mask*(x: uint64x8): mask_uint64x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint64x8): Natural = 8
proc extract_0*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: uint64x8): uint64  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: uint64x8, i: Natural): uint64 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var uint64x8, i: Natural, v: uint64) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: uint64x8): seq[uint64] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: uint64x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: uint64x8): string = "uint64x8"& $(x.to_array)
proc to_uint64x8*(x: seq[SIZE_TYPE]): uint64x8 =
  assert x.len == 8 ###
  Vector(x[0].uint64, x[1].uint64, x[2].uint64, x[3].uint64, x[4].uint64, x[5].uint64, x[6].uint64, x[7].uint64)
############################################
### END uint, uint64, 8 ###
############################################
##############################################
### BEGIN int, int64, 8 ###
##############################################
type int64x8* {.header: simd, importcpp: "int64<8>".} = object
type mask_int64x8* {.header: simd, importcpp: "mask_int64<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: int64): int64x8 {.header: simd, importcpp: "make_int<int64<8>>(@)".}
proc splat_int64x8*(x: SIZE_TYPE): int64x8 = Vector(x.int64, x.int64, x.int64, x.int64, x.int64, x.int64, x.int64, x.int64)
proc to_mask*(x: int64x8): mask_int64x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int64x8): Natural = 8
proc extract_0*(x: int64x8): int64  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: int64x8): int64  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: int64x8): int64  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: int64x8): int64  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: int64x8): int64  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: int64x8): int64  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: int64x8): int64  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: int64x8): int64  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: int64x8, i: Natural): int64 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var int64x8, i: Natural, v: int64) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: int64x8): seq[int64] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: int64x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: int64x8): string = "int64x8"& $(x.to_array)
proc to_int64x8*(x: seq[SIZE_TYPE]): int64x8 =
  assert x.len == 8 ###
  Vector(x[0].int64, x[1].int64, x[2].int64, x[3].int64, x[4].int64, x[5].int64, x[6].int64, x[7].int64)
############################################
### END int, int64, 8 ###
############################################
##############################################
### BEGIN float, float32, 16 ###
##############################################
type float32x16* {.header: simd, importcpp: "float32<16>".} = object
type mask_float32x16* {.header: simd, importcpp: "mask_float32<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: float32): float32x16 {.header: simd, importcpp: "make_float<float32<16>>(@)".}
proc splat_float32x16*(x: SIZE_TYPE): float32x16 = Vector(x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32)
proc to_mask*(x: float32x16): mask_float32x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float32x16): Natural = 16
proc extract_0*(x: float32x16): float32  {.header: simd, importcpp: "extract<0, 16>(@)"}
proc extract_1*(x: float32x16): float32  {.header: simd, importcpp: "extract<1, 16>(@)"}
proc extract_2*(x: float32x16): float32  {.header: simd, importcpp: "extract<2, 16>(@)"}
proc extract_3*(x: float32x16): float32  {.header: simd, importcpp: "extract<3, 16>(@)"}
proc extract_4*(x: float32x16): float32  {.header: simd, importcpp: "extract<4, 16>(@)"}
proc extract_5*(x: float32x16): float32  {.header: simd, importcpp: "extract<5, 16>(@)"}
proc extract_6*(x: float32x16): float32  {.header: simd, importcpp: "extract<6, 16>(@)"}
proc extract_7*(x: float32x16): float32  {.header: simd, importcpp: "extract<7, 16>(@)"}
proc extract_8*(x: float32x16): float32  {.header: simd, importcpp: "extract<8, 16>(@)"}
proc extract_9*(x: float32x16): float32  {.header: simd, importcpp: "extract<9, 16>(@)"}
proc extract_10*(x: float32x16): float32  {.header: simd, importcpp: "extract<10, 16>(@)"}
proc extract_11*(x: float32x16): float32  {.header: simd, importcpp: "extract<11, 16>(@)"}
proc extract_12*(x: float32x16): float32  {.header: simd, importcpp: "extract<12, 16>(@)"}
proc extract_13*(x: float32x16): float32  {.header: simd, importcpp: "extract<13, 16>(@)"}
proc extract_14*(x: float32x16): float32  {.header: simd, importcpp: "extract<14, 16>(@)"}
proc extract_15*(x: float32x16): float32  {.header: simd, importcpp: "extract<15, 16>(@)"}
proc `[]`*(x: float32x16, i: Natural): float32 =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  elif i == 7:###
    return extract_7(x)###
  elif i == 8:###
    return extract_8(x)###
  elif i == 9:###
    return extract_9(x)###
  elif i == 10:###
    return extract_10(x)###
  elif i == 11:###
    return extract_11(x)###
  elif i == 12:###
    return extract_12(x)###
  elif i == 13:###
    return extract_13(x)###
  elif i == 14:###
    return extract_14(x)###
  else:###
    return extract_15(x)###
proc insert_0*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<0, 16>(@)"}
proc insert_1*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<1, 16>(@)"}
proc insert_2*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<2, 16>(@)"}
proc insert_3*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<3, 16>(@)"}
proc insert_4*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<4, 16>(@)"}
proc insert_5*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<5, 16>(@)"}
proc insert_6*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<6, 16>(@)"}
proc insert_7*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<7, 16>(@)"}
proc insert_8*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<8, 16>(@)"}
proc insert_9*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<9, 16>(@)"}
proc insert_10*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<10, 16>(@)"}
proc insert_11*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<11, 16>(@)"}
proc insert_12*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<12, 16>(@)"}
proc insert_13*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<13, 16>(@)"}
proc insert_14*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<14, 16>(@)"}
proc insert_15*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "insert<15, 16>(@)"}
proc `[]=`*(x: var float32x16, i: Natural, v: float32) =
  assert 0 <= i and i < 16 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  elif i == 7:###
    x=insert_7(x, v)###
  elif i == 8:###
    x=insert_8(x, v)###
  elif i == 9:###
    x=insert_9(x, v)###
  elif i == 10:###
    x=insert_10(x, v)###
  elif i == 11:###
    x=insert_11(x, v)###
  elif i == 12:###
    x=insert_12(x, v)###
  elif i == 13:###
    x=insert_13(x, v)###
  elif i == 14:###
    x=insert_14(x, v)###
  else:###
    x=insert_15(x, v)###
proc to_seq*(x: float32x16): seq[float32] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc to_array*(x: float32x16): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9], x[10], x[11], x[12], x[13], x[14], x[15]]
proc `$`*(x: float32x16): string = "float32x16"& $(x.to_array)
proc to_float32x16*(x: seq[SIZE_TYPE]): float32x16 =
  assert x.len == 16 ###
  Vector(x[0].float32, x[1].float32, x[2].float32, x[3].float32, x[4].float32, x[5].float32, x[6].float32, x[7].float32, x[8].float32, x[9].float32, x[10].float32, x[11].float32, x[12].float32, x[13].float32, x[14].float32, x[15].float32)
############################################
### END float, float32, 16 ###
############################################
##############################################
### BEGIN float, float64, 8 ###
##############################################
type float64x8* {.header: simd, importcpp: "float64<8>".} = object
type mask_float64x8* {.header: simd, importcpp: "mask_float64<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: float64): float64x8 {.header: simd, importcpp: "make_float<float64<8>>(@)".}
proc splat_float64x8*(x: SIZE_TYPE): float64x8 = Vector(x.float64, x.float64, x.float64, x.float64, x.float64, x.float64, x.float64, x.float64)
proc to_mask*(x: float64x8): mask_float64x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float64x8): Natural = 8
proc extract_0*(x: float64x8): float64  {.header: simd, importcpp: "extract<0, 8>(@)"}
proc extract_1*(x: float64x8): float64  {.header: simd, importcpp: "extract<1, 8>(@)"}
proc extract_2*(x: float64x8): float64  {.header: simd, importcpp: "extract<2, 8>(@)"}
proc extract_3*(x: float64x8): float64  {.header: simd, importcpp: "extract<3, 8>(@)"}
proc extract_4*(x: float64x8): float64  {.header: simd, importcpp: "extract<4, 8>(@)"}
proc extract_5*(x: float64x8): float64  {.header: simd, importcpp: "extract<5, 8>(@)"}
proc extract_6*(x: float64x8): float64  {.header: simd, importcpp: "extract<6, 8>(@)"}
proc extract_7*(x: float64x8): float64  {.header: simd, importcpp: "extract<7, 8>(@)"}
proc `[]`*(x: float64x8, i: Natural): float64 =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    return extract_0(x)###
  elif i == 1:###
    return extract_1(x)###
  elif i == 2:###
    return extract_2(x)###
  elif i == 3:###
    return extract_3(x)###
  elif i == 4:###
    return extract_4(x)###
  elif i == 5:###
    return extract_5(x)###
  elif i == 6:###
    return extract_6(x)###
  else:###
    return extract_7(x)###
proc insert_0*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<0, 8>(@)"}
proc insert_1*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<1, 8>(@)"}
proc insert_2*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<2, 8>(@)"}
proc insert_3*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<3, 8>(@)"}
proc insert_4*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<4, 8>(@)"}
proc insert_5*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<5, 8>(@)"}
proc insert_6*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<6, 8>(@)"}
proc insert_7*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "insert<7, 8>(@)"}
proc `[]=`*(x: var float64x8, i: Natural, v: float64) =
  assert 0 <= i and i < 8 ###
  if i == 0:###
    x=insert_0(x, v)###
  elif i == 1:###
    x=insert_1(x, v)###
  elif i == 2:###
    x=insert_2(x, v)###
  elif i == 3:###
    x=insert_3(x, v)###
  elif i == 4:###
    x=insert_4(x, v)###
  elif i == 5:###
    x=insert_5(x, v)###
  elif i == 6:###
    x=insert_6(x, v)###
  else:###
    x=insert_7(x, v)###
proc to_seq*(x: float64x8): seq[float64] = @[x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc to_array*(x: float64x8): auto = [x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]]
proc `$`*(x: float64x8): string = "float64x8"& $(x.to_array)
proc to_float64x8*(x: seq[SIZE_TYPE]): float64x8 =
  assert x.len == 8 ###
  Vector(x[0].float64, x[1].float64, x[2].float64, x[3].float64, x[4].float64, x[5].float64, x[6].float64, x[7].float64)
############################################
### END float, float64, 8 ###
############################################
proc to_int8*(x: uint8x16): int8x16 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: uint8x16): uint16x16 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: uint8x16): int16x16 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: uint8x16): uint32x16 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: uint8x16): int32x16 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint8x16): float32x16 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint8*(x: int8x16): uint8x16 {.header: simd, importcpp: "@.to_uint8()".}
proc to_uint16*(x: int8x16): uint16x16 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: int8x16): int16x16 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: int8x16): uint32x16 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: int8x16): int32x16 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: int8x16): float32x16 {.header: simd, importcpp: "@.to_float32()".}
proc to_int16*(x: uint16x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: uint16x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: uint16x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint16x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: uint16x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: uint16x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: uint16x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint16*(x: int16x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_uint32*(x: int16x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: int16x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: int16x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: int16x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: int16x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: int16x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_int32*(x: uint32x4): int32x4 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint32x4): float32x4 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: uint32x4): uint64x4 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: uint32x4): int64x4 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: uint32x4): float64x4 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint32*(x: int32x4): uint32x4 {.header: simd, importcpp: "@.to_uint32()".}
proc to_float32*(x: int32x4): float32x4 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: int32x4): uint64x4 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: int32x4): int64x4 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: int32x4): float64x4 {.header: simd, importcpp: "@.to_float64()".}
proc to_int64*(x: uint64x2): int64x2 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: uint64x2): float64x2 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint64*(x: int64x2): uint64x2 {.header: simd, importcpp: "@.to_uint64()".}
proc to_float64*(x: int64x2): float64x2 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint32*(x: float32x4): uint32x4 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: float32x4): int32x4 {.header: simd, importcpp: "@.to_int32()".}
proc to_uint64*(x: float32x4): uint64x4 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: float32x4): int64x4 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: float32x4): float64x4 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint64*(x: float64x2): uint64x2 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: float64x2): int64x2 {.header: simd, importcpp: "@.to_int64()".}
proc to_int8*(x: uint8x32): int8x32 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: uint8x32): uint16x32 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: uint8x32): int16x32 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint8*(x: int8x32): uint8x32 {.header: simd, importcpp: "@.to_uint8()".}
proc to_uint16*(x: int8x32): uint16x32 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: int8x32): int16x32 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint8*(x: uint16x16): uint8x16 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: uint16x16): int8x16 {.header: simd, importcpp: "@.to_int8()".}
proc to_int16*(x: uint16x16): int16x16 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: uint16x16): uint32x16 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: uint16x16): int32x16 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint16x16): float32x16 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint8*(x: int16x16): uint8x16 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: int16x16): int8x16 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: int16x16): uint16x16 {.header: simd, importcpp: "@.to_uint16()".}
proc to_uint32*(x: int16x16): uint32x16 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: int16x16): int32x16 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: int16x16): float32x16 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint16*(x: uint32x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: uint32x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_int32*(x: uint32x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint32x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: uint32x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: uint32x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: uint32x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint16*(x: int32x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: int32x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: int32x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_float32*(x: int32x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: int32x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: int32x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: int32x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint32*(x: uint64x4): uint32x4 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: uint64x4): int32x4 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint64x4): float32x4 {.header: simd, importcpp: "@.to_float32()".}
proc to_int64*(x: uint64x4): int64x4 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: uint64x4): float64x4 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint32*(x: int64x4): uint32x4 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: int64x4): int32x4 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: int64x4): float32x4 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: int64x4): uint64x4 {.header: simd, importcpp: "@.to_uint64()".}
proc to_float64*(x: int64x4): float64x4 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint16*(x: float32x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: float32x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: float32x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: float32x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_uint64*(x: float32x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: float32x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: float32x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint32*(x: float64x4): uint32x4 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: float64x4): int32x4 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: float64x4): float32x4 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: float64x4): uint64x4 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: float64x4): int64x4 {.header: simd, importcpp: "@.to_int64()".}
proc to_int8*(x: uint8x64): int8x64 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint8*(x: int8x64): uint8x64 {.header: simd, importcpp: "@.to_uint8()".}
proc to_uint8*(x: uint16x32): uint8x32 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: uint16x32): int8x32 {.header: simd, importcpp: "@.to_int8()".}
proc to_int16*(x: uint16x32): int16x32 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint8*(x: int16x32): uint8x32 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: int16x32): int8x32 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: int16x32): uint16x32 {.header: simd, importcpp: "@.to_uint16()".}
proc to_uint8*(x: uint32x16): uint8x16 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: uint32x16): int8x16 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: uint32x16): uint16x16 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: uint32x16): int16x16 {.header: simd, importcpp: "@.to_int16()".}
proc to_int32*(x: uint32x16): int32x16 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint32x16): float32x16 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint8*(x: int32x16): uint8x16 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: int32x16): int8x16 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: int32x16): uint16x16 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: int32x16): int16x16 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: int32x16): uint32x16 {.header: simd, importcpp: "@.to_uint32()".}
proc to_float32*(x: int32x16): float32x16 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint16*(x: uint64x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: uint64x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: uint64x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: uint64x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: uint64x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_int64*(x: uint64x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
proc to_float64*(x: uint64x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint16*(x: int64x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: int64x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: int64x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: int64x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: int64x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: int64x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_float64*(x: int64x8): float64x8 {.header: simd, importcpp: "@.to_float64()".}
proc to_uint8*(x: float32x16): uint8x16 {.header: simd, importcpp: "@.to_uint8()".}
proc to_int8*(x: float32x16): int8x16 {.header: simd, importcpp: "@.to_int8()".}
proc to_uint16*(x: float32x16): uint16x16 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: float32x16): int16x16 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: float32x16): uint32x16 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: float32x16): int32x16 {.header: simd, importcpp: "@.to_int32()".}
proc to_uint16*(x: float64x8): uint16x8 {.header: simd, importcpp: "@.to_uint16()".}
proc to_int16*(x: float64x8): int16x8 {.header: simd, importcpp: "@.to_int16()".}
proc to_uint32*(x: float64x8): uint32x8 {.header: simd, importcpp: "@.to_uint32()".}
proc to_int32*(x: float64x8): int32x8 {.header: simd, importcpp: "@.to_int32()".}
proc to_float32*(x: float64x8): float32x8 {.header: simd, importcpp: "@.to_float32()".}
proc to_uint64*(x: float64x8): uint64x8 {.header: simd, importcpp: "@.to_uint64()".}
proc to_int64*(x: float64x8): int64x8 {.header: simd, importcpp: "@.to_int64()".}
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
proc divide*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "div(@)"}
proc divide*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "div(@)"}
proc divide*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "div(@)"}
proc divide*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "div(@)"}
proc divide*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "div(@)"}
proc `/`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "div(@)"}
proc divide*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "div(@)"}
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
