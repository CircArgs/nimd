
const simd = "<simdpp/simd.h>"

type SIZE_TYPE = uint8 or int8 or uint16 or int16 or uint32 or int32 or uint64 or int64 or float32 or float64

##############################################
### BEGIN uint, uint8, 16 ###
##############################################
type uint8x16* {.header: simd, importcpp: "simdpp::uint8<16>".} = object
type mask_uint8x16* {.header: simd, importcpp: "simdpp::mask_uint8<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint8): uint8x16 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint8<16>>(@)".}
proc splat_uint8x16*(x: SIZE_TYPE): uint8x16 = Vector(x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8, x.uint8)
proc to_mask*(x: uint8x16): mask_uint8x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint8x16): Natural = 16
proc extract_0*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: uint8x16): uint8  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var uint8x16, v: uint8): uint8x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type int8x16* {.header: simd, importcpp: "simdpp::int8<16>".} = object
type mask_int8x16* {.header: simd, importcpp: "simdpp::mask_int8<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int8): int8x16 {.header: simd, importcpp: "simdpp::make_int<simdpp::int8<16>>(@)".}
proc splat_int8x16*(x: SIZE_TYPE): int8x16 = Vector(x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8, x.int8)
proc to_mask*(x: int8x16): mask_int8x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int8x16): Natural = 16
proc extract_0*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: int8x16): int8  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var int8x16, v: int8): int8x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type uint16x8* {.header: simd, importcpp: "simdpp::uint16<8>".} = object
type mask_uint16x8* {.header: simd, importcpp: "simdpp::mask_uint16<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: uint16): uint16x8 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint16<8>>(@)".}
proc splat_uint16x8*(x: SIZE_TYPE): uint16x8 = Vector(x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16)
proc to_mask*(x: uint16x8): mask_uint16x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint16x8): Natural = 8
proc extract_0*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: uint16x8): uint16  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var uint16x8, v: uint16): uint16x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type int16x8* {.header: simd, importcpp: "simdpp::int16<8>".} = object
type mask_int16x8* {.header: simd, importcpp: "simdpp::mask_int16<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: int16): int16x8 {.header: simd, importcpp: "simdpp::make_int<simdpp::int16<8>>(@)".}
proc splat_int16x8*(x: SIZE_TYPE): int16x8 = Vector(x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16)
proc to_mask*(x: int16x8): mask_int16x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int16x8): Natural = 8
proc extract_0*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: int16x8): int16  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var int16x8, v: int16): int16x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type uint32x4* {.header: simd, importcpp: "simdpp::uint32<4>".} = object
type mask_uint32x4* {.header: simd, importcpp: "simdpp::mask_uint32<4>".} = object
proc Vector*(x0, x1, x2, x3: uint32): uint32x4 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint32<4>>(@)".}
proc splat_uint32x4*(x: SIZE_TYPE): uint32x4 = Vector(x.uint32, x.uint32, x.uint32, x.uint32)
proc to_mask*(x: uint32x4): mask_uint32x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint32x4): Natural = 4
proc extract_0*(x: uint32x4): uint32  {.header: simd, importcpp: "simdpp::extract<0, 4>(@)"}
proc extract_1*(x: uint32x4): uint32  {.header: simd, importcpp: "simdpp::extract<1, 4>(@)"}
proc extract_2*(x: uint32x4): uint32  {.header: simd, importcpp: "simdpp::extract<2, 4>(@)"}
proc extract_3*(x: uint32x4): uint32  {.header: simd, importcpp: "simdpp::extract<3, 4>(@)"}
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
proc insert_0*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "simdpp::insert<0, 4>(@)"}
proc insert_1*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "simdpp::insert<1, 4>(@)"}
proc insert_2*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "simdpp::insert<2, 4>(@)"}
proc insert_3*(x: var uint32x4, v: uint32): uint32x4 {.header: simd, importcpp: "simdpp::insert<3, 4>(@)"}
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
type int32x4* {.header: simd, importcpp: "simdpp::int32<4>".} = object
type mask_int32x4* {.header: simd, importcpp: "simdpp::mask_int32<4>".} = object
proc Vector*(x0, x1, x2, x3: int32): int32x4 {.header: simd, importcpp: "simdpp::make_int<simdpp::int32<4>>(@)".}
proc splat_int32x4*(x: SIZE_TYPE): int32x4 = Vector(x.int32, x.int32, x.int32, x.int32)
proc to_mask*(x: int32x4): mask_int32x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int32x4): Natural = 4
proc extract_0*(x: int32x4): int32  {.header: simd, importcpp: "simdpp::extract<0, 4>(@)"}
proc extract_1*(x: int32x4): int32  {.header: simd, importcpp: "simdpp::extract<1, 4>(@)"}
proc extract_2*(x: int32x4): int32  {.header: simd, importcpp: "simdpp::extract<2, 4>(@)"}
proc extract_3*(x: int32x4): int32  {.header: simd, importcpp: "simdpp::extract<3, 4>(@)"}
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
proc insert_0*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "simdpp::insert<0, 4>(@)"}
proc insert_1*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "simdpp::insert<1, 4>(@)"}
proc insert_2*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "simdpp::insert<2, 4>(@)"}
proc insert_3*(x: var int32x4, v: int32): int32x4 {.header: simd, importcpp: "simdpp::insert<3, 4>(@)"}
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
type uint64x2* {.header: simd, importcpp: "simdpp::uint64<2>".} = object
type mask_uint64x2* {.header: simd, importcpp: "simdpp::mask_uint64<2>".} = object
proc Vector*(x0, x1: uint64): uint64x2 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint64<2>>(@)".}
proc splat_uint64x2*(x: SIZE_TYPE): uint64x2 = Vector(x.uint64, x.uint64)
proc to_mask*(x: uint64x2): mask_uint64x2 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint64x2): Natural = 2
proc extract_0*(x: uint64x2): uint64  {.header: simd, importcpp: "simdpp::extract<0, 2>(@)"}
proc extract_1*(x: uint64x2): uint64  {.header: simd, importcpp: "simdpp::extract<1, 2>(@)"}
proc `[]`*(x: uint64x2, i: Natural): uint64 =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    return extract_0(x)###
  else:###
    return extract_1(x)###
proc insert_0*(x: var uint64x2, v: uint64): uint64x2 {.header: simd, importcpp: "simdpp::insert<0, 2>(@)"}
proc insert_1*(x: var uint64x2, v: uint64): uint64x2 {.header: simd, importcpp: "simdpp::insert<1, 2>(@)"}
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
type int64x2* {.header: simd, importcpp: "simdpp::int64<2>".} = object
type mask_int64x2* {.header: simd, importcpp: "simdpp::mask_int64<2>".} = object
proc Vector*(x0, x1: int64): int64x2 {.header: simd, importcpp: "simdpp::make_int<simdpp::int64<2>>(@)".}
proc splat_int64x2*(x: SIZE_TYPE): int64x2 = Vector(x.int64, x.int64)
proc to_mask*(x: int64x2): mask_int64x2 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int64x2): Natural = 2
proc extract_0*(x: int64x2): int64  {.header: simd, importcpp: "simdpp::extract<0, 2>(@)"}
proc extract_1*(x: int64x2): int64  {.header: simd, importcpp: "simdpp::extract<1, 2>(@)"}
proc `[]`*(x: int64x2, i: Natural): int64 =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    return extract_0(x)###
  else:###
    return extract_1(x)###
proc insert_0*(x: var int64x2, v: int64): int64x2 {.header: simd, importcpp: "simdpp::insert<0, 2>(@)"}
proc insert_1*(x: var int64x2, v: int64): int64x2 {.header: simd, importcpp: "simdpp::insert<1, 2>(@)"}
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
type float32x4* {.header: simd, importcpp: "simdpp::float32<4>".} = object
type mask_float32x4* {.header: simd, importcpp: "simdpp::mask_float32<4>".} = object
proc Vector*(x0, x1, x2, x3: float32): float32x4 {.header: simd, importcpp: "simdpp::make_float<simdpp::float32<4>>(@)".}
proc splat_float32x4*(x: SIZE_TYPE): float32x4 = Vector(x.float32, x.float32, x.float32, x.float32)
proc to_mask*(x: float32x4): mask_float32x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float32x4): Natural = 4
proc extract_0*(x: float32x4): float32  {.header: simd, importcpp: "simdpp::extract<0, 4>(@)"}
proc extract_1*(x: float32x4): float32  {.header: simd, importcpp: "simdpp::extract<1, 4>(@)"}
proc extract_2*(x: float32x4): float32  {.header: simd, importcpp: "simdpp::extract<2, 4>(@)"}
proc extract_3*(x: float32x4): float32  {.header: simd, importcpp: "simdpp::extract<3, 4>(@)"}
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
proc insert_0*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "simdpp::insert<0, 4>(@)"}
proc insert_1*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "simdpp::insert<1, 4>(@)"}
proc insert_2*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "simdpp::insert<2, 4>(@)"}
proc insert_3*(x: var float32x4, v: float32): float32x4 {.header: simd, importcpp: "simdpp::insert<3, 4>(@)"}
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
type float64x2* {.header: simd, importcpp: "simdpp::float64<2>".} = object
type mask_float64x2* {.header: simd, importcpp: "simdpp::mask_float64<2>".} = object
proc Vector*(x0, x1: float64): float64x2 {.header: simd, importcpp: "simdpp::make_float<simdpp::float64<2>>(@)".}
proc splat_float64x2*(x: SIZE_TYPE): float64x2 = Vector(x.float64, x.float64)
proc to_mask*(x: float64x2): mask_float64x2 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float64x2): Natural = 2
proc extract_0*(x: float64x2): float64  {.header: simd, importcpp: "simdpp::extract<0, 2>(@)"}
proc extract_1*(x: float64x2): float64  {.header: simd, importcpp: "simdpp::extract<1, 2>(@)"}
proc `[]`*(x: float64x2, i: Natural): float64 =
  assert 0 <= i and i < 2 ###
  if i == 0:###
    return extract_0(x)###
  else:###
    return extract_1(x)###
proc insert_0*(x: var float64x2, v: float64): float64x2 {.header: simd, importcpp: "simdpp::insert<0, 2>(@)"}
proc insert_1*(x: var float64x2, v: float64): float64x2 {.header: simd, importcpp: "simdpp::insert<1, 2>(@)"}
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
### BEGIN uint, uint16, 16 ###
##############################################
type uint16x16* {.header: simd, importcpp: "simdpp::uint16<16>".} = object
type mask_uint16x16* {.header: simd, importcpp: "simdpp::mask_uint16<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint16): uint16x16 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint16<16>>(@)".}
proc splat_uint16x16*(x: SIZE_TYPE): uint16x16 = Vector(x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16, x.uint16)
proc to_mask*(x: uint16x16): mask_uint16x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint16x16): Natural = 16
proc extract_0*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: uint16x16): uint16  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var uint16x16, v: uint16): uint16x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type int16x16* {.header: simd, importcpp: "simdpp::int16<16>".} = object
type mask_int16x16* {.header: simd, importcpp: "simdpp::mask_int16<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int16): int16x16 {.header: simd, importcpp: "simdpp::make_int<simdpp::int16<16>>(@)".}
proc splat_int16x16*(x: SIZE_TYPE): int16x16 = Vector(x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16, x.int16)
proc to_mask*(x: int16x16): mask_int16x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int16x16): Natural = 16
proc extract_0*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: int16x16): int16  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var int16x16, v: int16): int16x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type uint32x8* {.header: simd, importcpp: "simdpp::uint32<8>".} = object
type mask_uint32x8* {.header: simd, importcpp: "simdpp::mask_uint32<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: uint32): uint32x8 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint32<8>>(@)".}
proc splat_uint32x8*(x: SIZE_TYPE): uint32x8 = Vector(x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32)
proc to_mask*(x: uint32x8): mask_uint32x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint32x8): Natural = 8
proc extract_0*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: uint32x8): uint32  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var uint32x8, v: uint32): uint32x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type int32x8* {.header: simd, importcpp: "simdpp::int32<8>".} = object
type mask_int32x8* {.header: simd, importcpp: "simdpp::mask_int32<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: int32): int32x8 {.header: simd, importcpp: "simdpp::make_int<simdpp::int32<8>>(@)".}
proc splat_int32x8*(x: SIZE_TYPE): int32x8 = Vector(x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32)
proc to_mask*(x: int32x8): mask_int32x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int32x8): Natural = 8
proc extract_0*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: int32x8): int32  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var int32x8, v: int32): int32x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type uint64x4* {.header: simd, importcpp: "simdpp::uint64<4>".} = object
type mask_uint64x4* {.header: simd, importcpp: "simdpp::mask_uint64<4>".} = object
proc Vector*(x0, x1, x2, x3: uint64): uint64x4 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint64<4>>(@)".}
proc splat_uint64x4*(x: SIZE_TYPE): uint64x4 = Vector(x.uint64, x.uint64, x.uint64, x.uint64)
proc to_mask*(x: uint64x4): mask_uint64x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint64x4): Natural = 4
proc extract_0*(x: uint64x4): uint64  {.header: simd, importcpp: "simdpp::extract<0, 4>(@)"}
proc extract_1*(x: uint64x4): uint64  {.header: simd, importcpp: "simdpp::extract<1, 4>(@)"}
proc extract_2*(x: uint64x4): uint64  {.header: simd, importcpp: "simdpp::extract<2, 4>(@)"}
proc extract_3*(x: uint64x4): uint64  {.header: simd, importcpp: "simdpp::extract<3, 4>(@)"}
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
proc insert_0*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "simdpp::insert<0, 4>(@)"}
proc insert_1*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "simdpp::insert<1, 4>(@)"}
proc insert_2*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "simdpp::insert<2, 4>(@)"}
proc insert_3*(x: var uint64x4, v: uint64): uint64x4 {.header: simd, importcpp: "simdpp::insert<3, 4>(@)"}
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
type int64x4* {.header: simd, importcpp: "simdpp::int64<4>".} = object
type mask_int64x4* {.header: simd, importcpp: "simdpp::mask_int64<4>".} = object
proc Vector*(x0, x1, x2, x3: int64): int64x4 {.header: simd, importcpp: "simdpp::make_int<simdpp::int64<4>>(@)".}
proc splat_int64x4*(x: SIZE_TYPE): int64x4 = Vector(x.int64, x.int64, x.int64, x.int64)
proc to_mask*(x: int64x4): mask_int64x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int64x4): Natural = 4
proc extract_0*(x: int64x4): int64  {.header: simd, importcpp: "simdpp::extract<0, 4>(@)"}
proc extract_1*(x: int64x4): int64  {.header: simd, importcpp: "simdpp::extract<1, 4>(@)"}
proc extract_2*(x: int64x4): int64  {.header: simd, importcpp: "simdpp::extract<2, 4>(@)"}
proc extract_3*(x: int64x4): int64  {.header: simd, importcpp: "simdpp::extract<3, 4>(@)"}
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
proc insert_0*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "simdpp::insert<0, 4>(@)"}
proc insert_1*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "simdpp::insert<1, 4>(@)"}
proc insert_2*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "simdpp::insert<2, 4>(@)"}
proc insert_3*(x: var int64x4, v: int64): int64x4 {.header: simd, importcpp: "simdpp::insert<3, 4>(@)"}
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
type float32x8* {.header: simd, importcpp: "simdpp::float32<8>".} = object
type mask_float32x8* {.header: simd, importcpp: "simdpp::mask_float32<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: float32): float32x8 {.header: simd, importcpp: "simdpp::make_float<simdpp::float32<8>>(@)".}
proc splat_float32x8*(x: SIZE_TYPE): float32x8 = Vector(x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32)
proc to_mask*(x: float32x8): mask_float32x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float32x8): Natural = 8
proc extract_0*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: float32x8): float32  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var float32x8, v: float32): float32x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type float64x4* {.header: simd, importcpp: "simdpp::float64<4>".} = object
type mask_float64x4* {.header: simd, importcpp: "simdpp::mask_float64<4>".} = object
proc Vector*(x0, x1, x2, x3: float64): float64x4 {.header: simd, importcpp: "simdpp::make_float<simdpp::float64<4>>(@)".}
proc splat_float64x4*(x: SIZE_TYPE): float64x4 = Vector(x.float64, x.float64, x.float64, x.float64)
proc to_mask*(x: float64x4): mask_float64x4 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float64x4): Natural = 4
proc extract_0*(x: float64x4): float64  {.header: simd, importcpp: "simdpp::extract<0, 4>(@)"}
proc extract_1*(x: float64x4): float64  {.header: simd, importcpp: "simdpp::extract<1, 4>(@)"}
proc extract_2*(x: float64x4): float64  {.header: simd, importcpp: "simdpp::extract<2, 4>(@)"}
proc extract_3*(x: float64x4): float64  {.header: simd, importcpp: "simdpp::extract<3, 4>(@)"}
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
proc insert_0*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "simdpp::insert<0, 4>(@)"}
proc insert_1*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "simdpp::insert<1, 4>(@)"}
proc insert_2*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "simdpp::insert<2, 4>(@)"}
proc insert_3*(x: var float64x4, v: float64): float64x4 {.header: simd, importcpp: "simdpp::insert<3, 4>(@)"}
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
### BEGIN uint, uint32, 16 ###
##############################################
type uint32x16* {.header: simd, importcpp: "simdpp::uint32<16>".} = object
type mask_uint32x16* {.header: simd, importcpp: "simdpp::mask_uint32<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: uint32): uint32x16 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint32<16>>(@)".}
proc splat_uint32x16*(x: SIZE_TYPE): uint32x16 = Vector(x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32, x.uint32)
proc to_mask*(x: uint32x16): mask_uint32x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint32x16): Natural = 16
proc extract_0*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: uint32x16): uint32  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var uint32x16, v: uint32): uint32x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type int32x16* {.header: simd, importcpp: "simdpp::int32<16>".} = object
type mask_int32x16* {.header: simd, importcpp: "simdpp::mask_int32<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: int32): int32x16 {.header: simd, importcpp: "simdpp::make_int<simdpp::int32<16>>(@)".}
proc splat_int32x16*(x: SIZE_TYPE): int32x16 = Vector(x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32, x.int32)
proc to_mask*(x: int32x16): mask_int32x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int32x16): Natural = 16
proc extract_0*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: int32x16): int32  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var int32x16, v: int32): int32x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type uint64x8* {.header: simd, importcpp: "simdpp::uint64<8>".} = object
type mask_uint64x8* {.header: simd, importcpp: "simdpp::mask_uint64<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: uint64): uint64x8 {.header: simd, importcpp: "simdpp::make_uint<simdpp::uint64<8>>(@)".}
proc splat_uint64x8*(x: SIZE_TYPE): uint64x8 = Vector(x.uint64, x.uint64, x.uint64, x.uint64, x.uint64, x.uint64, x.uint64, x.uint64)
proc to_mask*(x: uint64x8): mask_uint64x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: uint64x8): Natural = 8
proc extract_0*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: uint64x8): uint64  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var uint64x8, v: uint64): uint64x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type int64x8* {.header: simd, importcpp: "simdpp::int64<8>".} = object
type mask_int64x8* {.header: simd, importcpp: "simdpp::mask_int64<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: int64): int64x8 {.header: simd, importcpp: "simdpp::make_int<simdpp::int64<8>>(@)".}
proc splat_int64x8*(x: SIZE_TYPE): int64x8 = Vector(x.int64, x.int64, x.int64, x.int64, x.int64, x.int64, x.int64, x.int64)
proc to_mask*(x: int64x8): mask_int64x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: int64x8): Natural = 8
proc extract_0*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: int64x8): int64  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var int64x8, v: int64): int64x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
type float32x16* {.header: simd, importcpp: "simdpp::float32<16>".} = object
type mask_float32x16* {.header: simd, importcpp: "simdpp::mask_float32<16>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15: float32): float32x16 {.header: simd, importcpp: "simdpp::make_float<simdpp::float32<16>>(@)".}
proc splat_float32x16*(x: SIZE_TYPE): float32x16 = Vector(x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32, x.float32)
proc to_mask*(x: float32x16): mask_float32x16 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float32x16): Natural = 16
proc extract_0*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<0, 16>(@)"}
proc extract_1*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<1, 16>(@)"}
proc extract_2*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<2, 16>(@)"}
proc extract_3*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<3, 16>(@)"}
proc extract_4*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<4, 16>(@)"}
proc extract_5*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<5, 16>(@)"}
proc extract_6*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<6, 16>(@)"}
proc extract_7*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<7, 16>(@)"}
proc extract_8*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<8, 16>(@)"}
proc extract_9*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<9, 16>(@)"}
proc extract_10*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<10, 16>(@)"}
proc extract_11*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<11, 16>(@)"}
proc extract_12*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<12, 16>(@)"}
proc extract_13*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<13, 16>(@)"}
proc extract_14*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<14, 16>(@)"}
proc extract_15*(x: float32x16): float32  {.header: simd, importcpp: "simdpp::extract<15, 16>(@)"}
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
proc insert_0*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<0, 16>(@)"}
proc insert_1*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<1, 16>(@)"}
proc insert_2*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<2, 16>(@)"}
proc insert_3*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<3, 16>(@)"}
proc insert_4*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<4, 16>(@)"}
proc insert_5*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<5, 16>(@)"}
proc insert_6*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<6, 16>(@)"}
proc insert_7*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<7, 16>(@)"}
proc insert_8*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<8, 16>(@)"}
proc insert_9*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<9, 16>(@)"}
proc insert_10*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<10, 16>(@)"}
proc insert_11*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<11, 16>(@)"}
proc insert_12*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<12, 16>(@)"}
proc insert_13*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<13, 16>(@)"}
proc insert_14*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<14, 16>(@)"}
proc insert_15*(x: var float32x16, v: float32): float32x16 {.header: simd, importcpp: "simdpp::insert<15, 16>(@)"}
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
type float64x8* {.header: simd, importcpp: "simdpp::float64<8>".} = object
type mask_float64x8* {.header: simd, importcpp: "simdpp::mask_float64<8>".} = object
proc Vector*(x0, x1, x2, x3, x4, x5, x6, x7: float64): float64x8 {.header: simd, importcpp: "simdpp::make_float<simdpp::float64<8>>(@)".}
proc splat_float64x8*(x: SIZE_TYPE): float64x8 = Vector(x.float64, x.float64, x.float64, x.float64, x.float64, x.float64, x.float64, x.float64)
proc to_mask*(x: float64x8): mask_float64x8 {.header: simd, importcpp: "@.to_mask()".}
proc len*(x: float64x8): Natural = 8
proc extract_0*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<0, 8>(@)"}
proc extract_1*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<1, 8>(@)"}
proc extract_2*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<2, 8>(@)"}
proc extract_3*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<3, 8>(@)"}
proc extract_4*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<4, 8>(@)"}
proc extract_5*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<5, 8>(@)"}
proc extract_6*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<6, 8>(@)"}
proc extract_7*(x: float64x8): float64  {.header: simd, importcpp: "simdpp::extract<7, 8>(@)"}
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
proc insert_0*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<0, 8>(@)"}
proc insert_1*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<1, 8>(@)"}
proc insert_2*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<2, 8>(@)"}
proc insert_3*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<3, 8>(@)"}
proc insert_4*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<4, 8>(@)"}
proc insert_5*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<5, 8>(@)"}
proc insert_6*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<6, 8>(@)"}
proc insert_7*(x: var float64x8, v: float64): float64x8 {.header: simd, importcpp: "simdpp::insert<7, 8>(@)"}
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
proc bit_and*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_and*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc `&`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_and(@)"}
proc bit_andnot*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_andnot*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc `&~`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_andnot(@)"}
proc bit_or*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_or*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc `|`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_or(@)"}
proc bit_xor*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_xor*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc `^`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_xor(@)"}
proc bit_not*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc bit_not*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc `~`*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::bit_not(@)"}
proc add*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc sub*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc mul*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::mul(@)"}
proc `*`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::mul(@)"}
proc mul*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::mul(@)"}
proc `*`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::mul(@)"}
proc mul*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::mul(@)"}
proc `*`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::mul(@)"}
proc mul*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::mul(@)"}
proc `*`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::mul(@)"}
proc mul*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::mul(@)"}
proc `*`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::mul(@)"}
proc mul*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::mul(@)"}
proc `*`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::mul(@)"}
proc divide*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::div(@)"}
proc `/`*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::div(@)"}
proc divide*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::div(@)"}
proc `/`*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::div(@)"}
proc divide*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::div(@)"}
proc `/`*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::div(@)"}
proc divide*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::div(@)"}
proc `/`*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::div(@)"}
proc divide*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::div(@)"}
proc `/`*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::div(@)"}
proc divide*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::div(@)"}
proc `/`*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::div(@)"}
proc fmadd*(x: float32x8, y: float32x8, z: float32x8): float32x8  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc `*+`*(x: float32x8, y: float32x8, z: float32x8): float32x8  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc fmadd*(x: float32x16, y: float32x16, z: float32x16): float32x16  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc `*+`*(x: float32x16, y: float32x16, z: float32x16): float32x16  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc fmadd*(x: float32x4, y: float32x4, z: float32x4): float32x4  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc `*+`*(x: float32x4, y: float32x4, z: float32x4): float32x4  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc fmadd*(x: float64x8, y: float64x8, z: float64x8): float64x8  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc `*+`*(x: float64x8, y: float64x8, z: float64x8): float64x8  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc fmadd*(x: float64x2, y: float64x2, z: float64x2): float64x2  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc `*+`*(x: float64x2, y: float64x2, z: float64x2): float64x2  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc fmadd*(x: float64x4, y: float64x4, z: float64x4): float64x4  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc `*+`*(x: float64x4, y: float64x4, z: float64x4): float64x4  {.header: simd, importcpp: "simdpp::fmadd(@)"}
proc fmsub*(x: float32x8, y: float32x8, z: float32x8): float32x8  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc `*-`*(x: float32x8, y: float32x8, z: float32x8): float32x8  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc fmsub*(x: float32x16, y: float32x16, z: float32x16): float32x16  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc `*-`*(x: float32x16, y: float32x16, z: float32x16): float32x16  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc fmsub*(x: float32x4, y: float32x4, z: float32x4): float32x4  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc `*-`*(x: float32x4, y: float32x4, z: float32x4): float32x4  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc fmsub*(x: float64x8, y: float64x8, z: float64x8): float64x8  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc `*-`*(x: float64x8, y: float64x8, z: float64x8): float64x8  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc fmsub*(x: float64x2, y: float64x2, z: float64x2): float64x2  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc `*-`*(x: float64x2, y: float64x2, z: float64x2): float64x2  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc fmsub*(x: float64x4, y: float64x4, z: float64x4): float64x4  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc `*-`*(x: float64x4, y: float64x4, z: float64x4): float64x4  {.header: simd, importcpp: "simdpp::fmsub(@)"}
proc neg*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc abs*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::abs(@)"}
proc sign*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::sign(@)"}
proc sign*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::sign(@)"}
proc sign*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::sign(@)"}
proc sign*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::sign(@)"}
proc sign*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::sign(@)"}
proc sign*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::sign(@)"}
proc min*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::min(@)"}
proc max*(x: float32x8, y: float32x8): float32x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: float32x16, y: float32x16): float32x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: float32x4, y: float32x4): float32x4  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: float64x8, y: float64x8): float64x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: float64x2, y: float64x2): float64x2  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: float64x4, y: float64x4): float64x4  {.header: simd, importcpp: "simdpp::max(@)"}
proc sqrt*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::sqrt(@)"}
proc sqrt*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::sqrt(@)"}
proc sqrt*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::sqrt(@)"}
proc sqrt*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::sqrt(@)"}
proc sqrt*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::sqrt(@)"}
proc sqrt*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::sqrt(@)"}
proc rcp_e*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::rcp_e(@)"}
proc rcp_e*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::rcp_e(@)"}
proc rcp_e*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::rcp_e(@)"}
proc rcp_e*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::rcp_e(@)"}
proc rcp_e*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::rcp_e(@)"}
proc rcp_e*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::rcp_e(@)"}
proc rcp_rh*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::rcp_rh(@)"}
proc rcp_rh*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::rcp_rh(@)"}
proc rcp_rh*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::rcp_rh(@)"}
proc rcp_rh*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::rcp_rh(@)"}
proc rcp_rh*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::rcp_rh(@)"}
proc rcp_rh*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::rcp_rh(@)"}
proc rsqrt_e*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::rsqrt_e(@)"}
proc rsqrt_e*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::rsqrt_e(@)"}
proc rsqrt_e*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::rsqrt_e(@)"}
proc rsqrt_e*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::rsqrt_e(@)"}
proc rsqrt_e*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::rsqrt_e(@)"}
proc rsqrt_e*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::rsqrt_e(@)"}
proc rsqrt_rh*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::rsqrt_rh(@)"}
proc rsqrt_rh*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::rsqrt_rh(@)"}
proc rsqrt_rh*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::rsqrt_rh(@)"}
proc rsqrt_rh*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::rsqrt_rh(@)"}
proc rsqrt_rh*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::rsqrt_rh(@)"}
proc rsqrt_rh*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::rsqrt_rh(@)"}
proc reduce_add*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_mul*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_min*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_max*(x: float32x8): float32x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: float32x16): float32x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: float32x4): float32x4  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: float64x8): float64x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: float64x2): float64x2  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: float64x4): float64x4  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc add*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::add(@)"}
proc add*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc `+`*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::add(@)"}
proc sub*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint8x16, y: int8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint64x8, y: int64x8): uint64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint64x2, y: int64x2): uint64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint64x4, y: int64x4): uint64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: int64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::sub(@)"}
proc sub*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc `-`*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::sub(@)"}
proc add_sat*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::add_sat(@)"}
proc add_sat*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::add_sat(@)"}
proc add_sat*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::add_sat(@)"}
proc add_sat*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::add_sat(@)"}
proc add_sat*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::add_sat(@)"}
proc add_sat*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::add_sat(@)"}
proc sub_sat*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::sub_sat(@)"}
proc sub_sat*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::sub_sat(@)"}
proc sub_sat*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::sub_sat(@)"}
proc sub_sat*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::sub_sat(@)"}
proc sub_sat*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::sub_sat(@)"}
proc sub_sat*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::sub_sat(@)"}
proc mul_lo*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint16x8, y: int16x8): uint16x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint16x16, y: int16x16): uint16x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint32x8, y: int32x8): uint32x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint32x16, y: int32x16): uint32x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint32x4, y: int32x4): uint32x4  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: int32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_lo*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::mul_lo(@)"}
proc mul_hi*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::mul_hi(@)"}
proc mul_hi*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::mul_hi(@)"}
proc mul_hi*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::mul_hi(@)"}
proc mul_hi*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::mul_hi(@)"}
proc mull*(x: int16x8, y: int16x8): int32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int16x8, y: int16x8): int32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int16x16, y: int16x16): int32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int16x16, y: int16x16): int32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint16x8, y: int16x8): uint32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint16x8, y: int16x8): uint32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint16x16, y: int16x16): uint32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint16x16, y: int16x16): uint32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint16x8, y: uint16x8): uint32x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint16x16, y: uint16x16): uint32x16  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int32x8, y: int32x8): int64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int32x8, y: int32x8): int64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int32x4, y: int32x4): int64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int32x4, y: int32x4): int64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint32x8, y: int32x8): uint64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint32x8, y: int32x8): uint64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint32x4, y: int32x4): uint64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint32x4, y: int32x4): uint64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: int32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: int32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint32x8, y: uint32x8): uint64x8  {.header: simd, importcpp: "simdpp::mull(@)"}
proc mull*(x: uint32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc `*`*(x: uint32x4, y: uint32x4): uint64x4  {.header: simd, importcpp: "simdpp::mull(@)"}
proc neg*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::neg(@)"}
proc neg*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc `-`*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::neg(@)"}
proc abs*(x: int8x16): uint8x16  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int16x8): uint16x8  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int16x16): uint16x16  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int32x8): uint32x8  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int32x16): uint32x16  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int32x4): uint32x4  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int64x8): uint64x8  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int64x2): uint64x2  {.header: simd, importcpp: "simdpp::abs(@)"}
proc abs*(x: int64x4): uint64x4  {.header: simd, importcpp: "simdpp::abs(@)"}
proc avg*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::avg(@)"}
proc avg_trunc*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc avg_trunc*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::avg_trunc(@)"}
proc min*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::min(@)"}
proc min*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::min(@)"}
proc max*(x: int8x16, y: int8x16): int8x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint8x16, y: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int16x8, y: int16x8): int16x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int16x16, y: int16x16): int16x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint16x8, y: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint16x16, y: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int32x8, y: int32x8): int32x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int32x16, y: int32x16): int32x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int32x4, y: int32x4): int32x4  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint32x8, y: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint32x16, y: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint32x4, y: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int64x8, y: int64x8): int64x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int64x2, y: int64x2): int64x2  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: int64x4, y: int64x4): int64x4  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint64x8, y: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint64x2, y: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::max(@)"}
proc max*(x: uint64x4, y: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::max(@)"}
proc shift_l*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_l*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc `<<`*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::shift_l(@)"}
proc shift_r*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc shift_r*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc `>>`*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::shift_r(@)"}
proc reduce_add*(x: int8x16): int16x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint8x16): uint16x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int16x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int16x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint16x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint16x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_add*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::reduce_add(@)"}
proc reduce_mul*(x: int16x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: int16x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: uint16x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: uint16x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_mul*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::reduce_mul(@)"}
proc reduce_min*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_min*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::reduce_min(@)"}
proc reduce_max*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_max*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::reduce_max(@)"}
proc reduce_and*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_and*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::reduce_and(@)"}
proc reduce_or*(x: int8x16): int8x16  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint8x16): uint8x16  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int16x8): int16x8  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int16x16): int16x16  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint16x8): uint16x8  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint16x16): uint16x16  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int32x8): int32x8  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int32x16): int32x16  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int32x4): int32x4  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint32x8): uint32x8  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint32x16): uint32x16  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint32x4): uint32x4  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int64x8): int64x8  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int64x2): int64x2  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: int64x4): int64x4  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint64x8): uint64x8  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint64x2): uint64x2  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
proc reduce_or*(x: uint64x4): uint64x4  {.header: simd, importcpp: "simdpp::reduce_or(@)"}
