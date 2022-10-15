# nimd
NIMD: A Write Once SIMD Library for Nim wrapping [libsimdpp](https://github.com/p12tic/libsimdpp).

NIMD supports a large part of `libsimdpp`. See its docs: [libsimdpp docs](https://p12tic.github.io/libsimdpp/v2.2-dev/libsimdpp/w/)

NIMD allows you to use SIMD vectorization without the need for specific intrinsics. 

Courtesy of [libsimdpp](https://github.com/p12tic/libsimdpp):

> On architectures that support different SIMD instruction sets the library allows the same source code files to be compiled for each SIMD instruction set and then hooked into an internal or third-party dynamic dispatch mechanism. This allows the capabilities of the processor to be queried on runtime and the most efficient implementation to be selected.


# Simple example
```nim
import nimd

var  x = Vector(1.float32, 2, 3, 4)
let 
  y = Vector(4.float32, 3, 2, 1)
  z = x * y / x # standard ops
x[3]=9 #insertion
echo z # float32x4[4.0, 3.0, 2.0, 1.0]
echo x # float32x4[1.0, 2.0, 3.0, 9.0]
echo y.min(x) # float32x4[1.0, 2.0, 2.0, 1.0]
```

# Installation
`nimble install https://github.com/CircArgs/nimd.git`

You will also need [libsimdpp](https://github.com/p12tic/libsimdpp) (As of this writing NIMD works with [f7ab03f](https://github.com/p12tic/libsimdpp/commit/f7ab03f4b1e94fc24d5dfff29baf2b71bb07b91d)). Clone it somewhere `git clone https://github.com/p12tic/libsimdpp.git`. Lets call the absolute path to `libsimdpp`: `MY_LIBSIMDPP_PATH`.

We can build projects derivative of `NIMD` by using the following [nim compiler](https://nim-lang.org/docs/nimc.html) flags:

- `cpp`: use the c++ backend
- `-t:-I$MY_LIBSIMDPP_PATH`: a NIMD compile-time flag to state where `libsimdpp` is located

**Note:** you could also add these to a `config.nims`

### Example:
`nim cpp -t:"-I/home/nick/Projects/testnimd/libsimdpp" -r src/testnimd.nim `

# Types
NIMD supports the following vector types
<table border="1" class="dataframe">  <thead>    <tr style="text-align: right;">      <th>base_type</th>      <th>size_type</th>      <th>simd_width</th>      <th>simd_type</th>    </tr>  </thead>  <tbody>    <tr>      <td>uint</td>      <td>uint8</td>      <td>16</td>      <td>uint8x16</td>    </tr>    <tr>      <td>int</td>      <td>int8</td>      <td>16</td>      <td>int8x16</td>    </tr>    <tr>      <td>uint</td>      <td>uint16</td>      <td>8</td>      <td>uint16x8</td>    </tr>    <tr>      <td>int</td>      <td>int16</td>      <td>8</td>      <td>int16x8</td>    </tr>    <tr>      <td>uint</td>      <td>uint32</td>      <td>4</td>      <td>uint32x4</td>    </tr>    <tr>      <td>int</td>      <td>int32</td>      <td>4</td>      <td>int32x4</td>    </tr>    <tr>      <td>uint</td>      <td>uint64</td>      <td>2</td>      <td>uint64x2</td>    </tr>    <tr>      <td>int</td>      <td>int64</td>      <td>2</td>      <td>int64x2</td>    </tr>    <tr>      <td>float</td>      <td>float32</td>      <td>4</td>      <td>float32x4</td>    </tr>    <tr>      <td>float</td>      <td>float64</td>      <td>2</td>      <td>float64x2</td>    </tr>    <tr>      <td>uint</td>      <td>uint8</td>      <td>32</td>      <td>uint8x32</td>    </tr>    <tr>      <td>int</td>      <td>int8</td>      <td>32</td>      <td>int8x32</td>    </tr>    <tr>      <td>uint</td>      <td>uint16</td>      <td>16</td>      <td>uint16x16</td>    </tr>    <tr>      <td>int</td>      <td>int16</td>      <td>16</td>      <td>int16x16</td>    </tr>    <tr>      <td>uint</td>      <td>uint32</td>      <td>8</td>      <td>uint32x8</td>    </tr>    <tr>      <td>int</td>      <td>int32</td>      <td>8</td>      <td>int32x8</td>    </tr>    <tr>      <td>uint</td>      <td>uint64</td>      <td>4</td>      <td>uint64x4</td>    </tr>    <tr>      <td>int</td>      <td>int64</td>      <td>4</td>      <td>int64x4</td>    </tr>    <tr>      <td>float</td>      <td>float32</td>      <td>8</td>      <td>float32x8</td>    </tr>    <tr>      <td>float</td>      <td>float64</td>      <td>4</td>      <td>float64x4</td>    </tr>    <tr>      <td>uint</td>      <td>uint8</td>      <td>64</td>      <td>uint8x64</td>    </tr>    <tr>      <td>int</td>      <td>int8</td>      <td>64</td>      <td>int8x64</td>    </tr>    <tr>      <td>uint</td>      <td>uint16</td>      <td>32</td>      <td>uint16x32</td>    </tr>    <tr>      <td>int</td>      <td>int16</td>      <td>32</td>      <td>int16x32</td>    </tr>    <tr>      <td>uint</td>      <td>uint32</td>      <td>16</td>      <td>uint32x16</td>    </tr>    <tr>      <td>int</td>      <td>int32</td>      <td>16</td>      <td>int32x16</td>    </tr>    <tr>      <td>uint</td>      <td>uint64</td>      <td>8</td>      <td>uint64x8</td>    </tr>    <tr>      <td>int</td>      <td>int64</td>      <td>8</td>      <td>int64x8</td>    </tr>    <tr>      <td>float</td>      <td>float32</td>      <td>16</td>      <td>float32x16</td>    </tr>    <tr>      <td>float</td>      <td>float64</td>      <td>8</td>      <td>float64x8</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint8</td>      <td>16</td>      <td>mask_uint8x16</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int8</td>      <td>16</td>      <td>mask_int8x16</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint16</td>      <td>8</td>      <td>mask_uint16x8</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int16</td>      <td>8</td>      <td>mask_int16x8</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint32</td>      <td>4</td>      <td>mask_uint32x4</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int32</td>      <td>4</td>      <td>mask_int32x4</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint64</td>      <td>2</td>      <td>mask_uint64x2</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int64</td>      <td>2</td>      <td>mask_int64x2</td>    </tr>    <tr>      <td>mask_float</td>      <td>mask_float32</td>      <td>4</td>      <td>mask_float32x4</td>    </tr>    <tr>      <td>mask_float</td>      <td>mask_float64</td>      <td>2</td>      <td>mask_float64x2</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint8</td>      <td>32</td>      <td>mask_uint8x32</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int8</td>      <td>32</td>      <td>mask_int8x32</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint16</td>      <td>16</td>      <td>mask_uint16x16</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int16</td>      <td>16</td>      <td>mask_int16x16</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint32</td>      <td>8</td>      <td>mask_uint32x8</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int32</td>      <td>8</td>      <td>mask_int32x8</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint64</td>      <td>4</td>      <td>mask_uint64x4</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int64</td>      <td>4</td>      <td>mask_int64x4</td>    </tr>    <tr>      <td>mask_float</td>      <td>mask_float32</td>      <td>8</td>      <td>mask_float32x8</td>    </tr>    <tr>      <td>mask_float</td>      <td>mask_float64</td>      <td>4</td>      <td>mask_float64x4</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint8</td>      <td>64</td>      <td>mask_uint8x64</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int8</td>      <td>64</td>      <td>mask_int8x64</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint16</td>      <td>32</td>      <td>mask_uint16x32</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int16</td>      <td>32</td>      <td>mask_int16x32</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint32</td>      <td>16</td>      <td>mask_uint32x16</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int32</td>      <td>16</td>      <td>mask_int32x16</td>    </tr>    <tr>      <td>mask_uint</td>      <td>mask_uint64</td>      <td>8</td>      <td>mask_uint64x8</td>    </tr>    <tr>      <td>mask_int</td>      <td>mask_int64</td>      <td>8</td>      <td>mask_int64x8</td>    </tr>    <tr>      <td>mask_float</td>      <td>mask_float32</td>      <td>16</td>      <td>mask_float32x16</td>    </tr>    <tr>      <td>mask_float</td>      <td>mask_float64</td>      <td>8</td>      <td>mask_float64x8</td>    </tr>  </tbody></table>
