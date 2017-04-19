# # PROMPT
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

# SOLUTION
require 'pry'

# find all palindromes in range of 3 digit products
palindromes = []
(100001..998001).each do |num|
  str = num.to_s
  if str == str.reverse
    palindromes.push(num)
  end
end

# work backwards and find if any have a 3 digit factor (also working backwords)
def find_largest_palindrome(pals)
  answer = 0
  pals.reverse_each do |palin|
    # loop backwards over all three digit integers
    (100..999).reverse_each do |three_dig|
      factor = palin / three_dig
      # determine if current palindrome has a three digit factor and corresponding
      # factor pair is also three digits
      if palin % three_dig == 0 && factor.to_s.length == 3
        answer = palin
        return answer
      end
    end
  end
end

find_largest_palindrome(palindromes)
