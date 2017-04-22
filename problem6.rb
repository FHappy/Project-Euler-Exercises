# PROMPT
# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# SOLUTION

def squares_sum(num)
  (1..num).reduce(0) {|acc, val| acc + val**2}
end

def sum_squared(num)
  sum = (1..num).reduce(0) {|acc, val| acc + val}
  sum**2
end

sum_squared(100) - squares_sum(100)