craig_hungry = true
craig_tired = true

p "Craig is hangry" if craig_hungry && craig_tired

craig_tired = false

p "Craig is grumpy" if craig_hungry || craig_tired
