# define stitching algorithm first, will be recursively used
def stitch(sub_arr1, sub_arr2)
  # result
  stitched = []
  
  # basically assuming will already be sorted
  # comparing each value, if value is smaller will push to stitched array
  # will keep running loop while either result is nonempty
  while sub_arr1.length > 0 and sub_arr2.length > 0
    if sub_arr1[0] <= sub_arr2[0]
      stitched.push(sub_arr1.shift)
    else 
      stitched.push(sub_arr2.shift)
    end
  end
  
  # afterwards we'll be left with a single nonempty array
  # push all results to teh stitched
  while sub_arr1.length > 0
    stitched.push(sub_arr1.shift)
  end
  
  while sub_arr2.length > 0
    stitched.push(sub_arr2.shift)
  end
  
  stitched
end


# actual algorithm
def merge_sort(arr)
  # base case 
  if (arr.length < 2)
    return arr
  end
  
  # divide array into two halves (will be recursively done every recursion)
  length = arr.length;
  middle = (length / 2).floor
  
  left = arr.slice(0, middle)
  right = arr.slice(middle, length)
  
  # return the stitched version of sorted halves (will be repeatedly called until length of halves are 1)
  stitch(merge_sort(left), merge_sort(right))
end

merge_sort([1,4,7,9,12,5,14])