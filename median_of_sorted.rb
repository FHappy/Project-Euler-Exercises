# PROMPT
# Find the median of two sorted arrays

def find_median(arr1, arr2)
  # determine index value of median element
  median_index = ((arr1.length + arr2.length) / 2.0).round
  
  stitched = []
  # merge in order until length of the merged and sorted array is enough to
  # calculate the median
  while arr1.length > 0 and arr2.length > 0 and stitched.length < median_index
    if arr1[0] <= arr2[0]
      stitched.push(arr1.shift)
    else
      stitched.push(arr2.shift)
    end
  end
  
  puts stitched
  # if the stitched array has an even number of elements, then we need to use the last two
  # otherwise just return the last element
  if stitched.length.even?
    return (stitched[-1] + stitched[-2]) / 2.0
  else
    return stitched[-1]
  end
end


# find_median([1,3,5,8,9,10], [1,2,2,3,5,7])
find_median([1,2,4], [2,3,6,7])