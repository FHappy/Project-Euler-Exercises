# PROMPT
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# SOLUTION

require 'pry'

def pythagorean_triplet(num)
  a = 3
  b = 4
  c = 5

  while (a + b + c) < num
    a += 3
    b += 4
    c += 5
  end
  arr = [a, b, c]
  arr
end

puts pythagorean_triplet(1000)

