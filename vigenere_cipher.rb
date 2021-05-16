def vigenere_cipher(message, keys)
  new_str = ""
  alpha = ("a".."z").to_a

  message.each_char.with_index do |char, i|
    old_pos = alpha.index(char)
    new_pos = (old_pos + keys[i % keys.length]) % 26
    new_str += alpha[new_pos]
  end
  new_str  
end

p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("toerrishuman", [1])
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("yawn", [5, 1])  