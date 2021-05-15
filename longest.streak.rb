def longest_streak(str)
  new_str = ""
  count = Hash.new(0)
  str.each_char {|char| count[char] += 1 }
  sorted = count.sort_by {|k ,v| v }
  sorted[-1][0] * sorted[-1][1]
end  

longest_streak('a')           # => 'a'
longest_streak('accccbbb')    # => 'cccc'
longest_streak('aaaxyyyyyzz') # => 'yyyyy
longest_streak('aaabbb')      # => 'bbb'
longest_streak('abc')         # => 'c'