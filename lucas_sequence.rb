def lucas_sequence(length)
  return [] if length == 0
  return [2] if length == 1
  return [2, 1] if length == 2

  seq = lucas_sequence(length -1)
  next_el = seq[-1] + seq[-2]
  seq << next_el
end

p lucas_sequence(0)   # => []
p lucas_sequence(1)   # => [2]    
p lucas_sequence(2)   # => [2, 1]
p lucas_sequence(3)   # => [2, 1, 3]
p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
p lucas_sequence(8) 