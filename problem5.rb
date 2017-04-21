# PROMPT
# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

# SOLUTION
# should be product of all common prime factors
# i.e. 20 is just a product of 2^2 and 5, so you can ignore 20 if we're already
# including 4 and 5

require 'pry'
require 'set'

# first, make a function to see if number in question is prime
# prime if it has no factors besides one and itself
def is_prime?(num)
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end
  true
end

# our recursive function which we'll use to continually grab the prime factor
# pair, i.e. a prime we're going to push to our array of primes and the composite
# well run recursively back into the function
def get_prime_factor_pair(num)
  factor = num
  prime = 1
  (2...num).each do |i|
    # need to find lowest prime factor
    if num % i == 0 && is_prime?(i)
      # update values
      prime = i
      factor = num / i
      break
    end
  end
  [prime, factor]
end

def get_prime_factorization(num)
  # edge case: if it's already prime, just return 1 and itself
  return [1, num] if is_prime?(num)
  prime_factors = []
  # initialize pair with our value in question
  pair = get_prime_factor_pair(num)
  # run recursively until the 'composite' factor in the pair is actually prime
  # i.e our end
  until pair[0] == 1 do
    prime_factors.push(pair[0])
    pair = get_prime_factor_pair(pair[1])
  end
  # finally can't forget to push the last prime value
  prime_factors.push(pair[1])
  prime_factors
end

def only_common_primes(last_number)
  # all primes we'll be using to compare with afterwards
  final_primes = Set[]
  # get all primes to compare with the final primes array
  (2..last_number).each do |num|
    prime_factors = Set.new get_prime_factorization(num)
    common_terms = final_primes & prime_factors
    union = prime_factors - common_terms
    binding.pry
    final_primes += union
  end
end
only_common_primes(20)
