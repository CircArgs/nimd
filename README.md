# nimd
NIMD: A Write Once SIMD Library for Nim wrapping libsimdpp


# Simple example
```nim
let 
  x = Vector(1.float32, 2, 3, 4)
  y = Vector(4.float32, 3, 2, 1)
  z = x * y / x

echo z # float32x4[4.0, 3.0, 2.0, 1.0]
echo x # float32x4[1.0, 2.0, 3.0, 4.0]
echo y.min(x) # float32x4[1.0, 2.0, 2.0, 1.0]
```