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
  list = (3...large_num).select do |i|
    i.odd?
  end
  list.each do |i|
    is_prime = false
    # loop over all non even numbers less
    # than the current term
    nums.each do |num|
      # if it has a factor then ignore it
      if i % num == 0
        is_prime = false
        break
      end
      is_prime = true
    end
    # if it doesn't have any factors with the numbers before it
    # then push it to the array of primes
    if is_prime
      primes.push(i)
    end
    is_prime = false
    nums.push(i)
  end
  binding.pry
  primes
end

def get_largest_prime(num)
  # get all primes
  primes = list_of_primes(num)
  # filter out list of primes for those that are factors
  factors = primes.select do |n|
    num % n == 0
  end
  binding.pry
  # return largest value
  factors[-1]
end

# really only have to figure out primes up to the square root
# square_root = (600851475143 ** 0.5).floor
puts get_largest_prime(600851475143)
