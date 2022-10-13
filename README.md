# nimd
NIMD: A Write Once SIMD Library for Nim wrapping libsimdpp


# Simple example
```nim
var  x = Vector(1.float32, 2, 3, 4)
let 
  y = Vector(4.float32, 3, 2, 1)
  z = x * y / x
x[3]=9
echo z # float32x4[4.0, 3.0, 2.0, 1.0]
echo x # float32x4[1.0, 2.0, 3.0, 9.0]
echo y.min(x) # float32x4[1.0, 2.0, 2.0, 1.0]
```