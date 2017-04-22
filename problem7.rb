# PROMPT
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
#  we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# SOLUTION

def is_prime?(num)
  (2...num).each do |n|
    if num % n == 0
      return false
    end
  end
  true
end

primes_arr = [2]
i = 3
while primes_arr.length < 10001
  primes_arr.push(i) if is_prime?(i)
  i+= 1
end


puts primes_arr[-1]
