def char_indices(str)
  hash = Hash.new {|h, k| h[k] = []}
  str.each_char.with_index do |char, i|
    hash[char] << i
  end
  hash  
end  