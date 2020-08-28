def is_prime?(num)
  (2.Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

def prime_nth(num)
  prime_array = []
  current_num = 2
  while prime_array.size < num
    prime_array << current_num if is_prime?(current_num)
    current_num += 1
  end
  prime_array.last
end