def bi_prime?(num)
  prime_facts = prime_factors(num)   
  prime_facts.any? do |a|
    b = num / a
    prime_facts.include?(b)
  end  
end  


def prime?(num)
  return false if num < 2
  (2...num).none? {|i| num % i == 0}
end

def prime_factors(num)
  (2..num).select {|factor| num % factor == 0 && prime?(factor)}
end  

prime_factors(12) #=> [2, 3]