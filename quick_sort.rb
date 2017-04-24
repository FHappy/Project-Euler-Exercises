# sorting large unsorted array
def quick_sort(arr)
  # basecase: if array (recursively passed) is less than 2 elements, it's already soretd
  if arr.length < 2
    return arr
  end
  
  # choice for pivot is arbitrary, but last element is easier
  pivot = arr.pop  

  # alternatively, we could choose 3 numbers arbitrary and then pick the middle value of the three
  # as the pivot
  # might as well do first, middle (or close enough to it), and last terms
  
  

  # going to be splitting into two arrays based on size relative to pivot
  left = []
  right = []

  # loop through array and split to left or right depending on size of iterative term
  arr.each do |n|
    if n < pivot
      left.push(n)
    else
      right.push(n)
    end
  end
  
  # finally call function recursively
  return quick_sort(left).push(pivot) + quick_sort(right)
end

puts quick_sort([1,5,6,3,4,9,10,4,12])