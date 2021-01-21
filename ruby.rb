require 'pry'
require 'byebug'

def prime?(num)

  (2...num).each do |idx|
    if num % idx == 0
      return false
    end
  end

  return true
end

def primes(num_primes)
  ps = []
  num = 1
  while ps.count < num_primes
    if prime?(num)
        ps << num
    end
    num += 1
  end

  return ps
end

if __FILE__ == $PROGRAM_NAME
  puts primes(100)
end