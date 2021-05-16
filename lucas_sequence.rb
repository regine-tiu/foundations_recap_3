def lucas_sequence(num)
  arr = []
  return arr if num == 0
  arr << 2 if num == 1
  
  (0...num.length).each |i|
    arr << (lucas_sequence[i-1] + lucas_sequence[i-2])
  end
  arr
end

p lucas_sequence(0)