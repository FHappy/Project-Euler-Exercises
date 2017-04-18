# PROMPT
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

# SOLUTION
require 'pry'

# get all the primes as an array
def list_of_primes(large_num)
  primes = [1,2]
  nums = [2]
  (3...large_num).each do |i|
    is_prime = false
    nums.each do |num|
      if i % num == 0
        is_prime = false
        break
      end
      is_prime = true
    end
    if is_prime
      primes.push(i)
    end
    is_prime = false
    nums.push(i)
  end
  primes
end

def get_largest_prime(num)
  # get all primes
  primes = list_of_primes(num)
  # filter out list of primes for those that are factors
  factors = primes.select do |n|
    num % n === 0
  end
  # return largest value
  factors[-1]
end
