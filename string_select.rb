class String
  def select(&prc)
    new_str = ""
    return "" if prc == nil
    self.each_char do |char|
      new_str += char if prc.call(char)
    end 
    new_str
  end
end

p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
p "HELLOworld".select      