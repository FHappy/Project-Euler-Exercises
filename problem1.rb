# PROMPT
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

# SOLUTION

sum = 0
(0...1000).each do |x|
  if x % 5 == 0 || x % 3 == 0
    sum += x
  end
end

puts "sum is #{sum}"
sum
