def no_dupes?(arr)
  new_arr = []
  hash = Hash.new(0)
  arr.each {|ele| hash[ele] += 1}
  hash.each do |k, v|
    new_arr << k if v == 1
  end  
  p new_arr
end  

no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
no_dupes?([true, true, true])            # => []