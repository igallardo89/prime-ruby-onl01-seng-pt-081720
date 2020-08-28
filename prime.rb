def lab(x)
  primes = (0..x).to_a
  primes[0] = primes[1] = nil
  counter = 0
  primes.each do |p|
    next unless p
    break if p*p > x
    counter += 1
    (p*p).step(x,p) { |m| primes[m] = nil }
  end
  puts "Solved for #{x} in #{counter} steps."
  primes.compact
end

def prime?(num)
  lab(num).include?(num)
end