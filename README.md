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
- `-d:libsimdpppath=MY_LIBSIMDPP_PATH`: a NIMD compile-time flag to state where `libsimdpp` is located

### Example:
`nim cpp -d:libsimdpppath="-I/home/nick/Projects/nimd/libsimdpp" my_project.nim`
