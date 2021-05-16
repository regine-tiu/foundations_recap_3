def vowel_rotate(str)
  vowels = "aeiou"
  new_str = str[0..-1]
  vowel_idx = (0...str.length).select {|i| vowels.include?(str[i])}
  new_order = vowel_idx.rotate(-1)

  vowel_idx.each_with_index do |vowel_idx, i|
    new_vowel = str[new_order[i]]
    new_str[vowel_idx] = new_vowel
  end
  new_str
end  
  


p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges') 