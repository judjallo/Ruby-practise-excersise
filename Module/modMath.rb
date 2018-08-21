puts Math::E
puts Math::PI
puts Math.sqrt(9)
puts Math.cos(1)
puts Math.hypot(2, 2)
puts Math.log(2, 10)
puts Math.log(2, 12)

#Other modules (like Math) are meant to be used all by themselves. You call methods directly on the module itself.

@pi = nil
@e  = nil
@sqrt = nil

module Math
  puts Math::E = @e
end