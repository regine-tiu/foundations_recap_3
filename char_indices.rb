def char_indices(str)
  hash = Hash.new {|h, k| h[k] = []}
  str.each_char.with_index do |char, i|
    hash[char] << i
  end
  hash  
end  

char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
char_indices('classroom')