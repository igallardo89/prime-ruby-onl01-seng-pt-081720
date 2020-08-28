
def check_prime? (num)
  prime=true
 [2,3,5].each do |init|
   if (num%init==0 && num!= init)
   return false
   end
 end
prime
end

def get_primes (num)
  (1..num).select {|i| check_prime?(i)}
end

p get_primes(100)