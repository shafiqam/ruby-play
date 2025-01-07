=begin
Build a method #bubble_sort that takes an array and returns a sorted array.
It must use the bubble sort methodology (using #sort would be pretty pointless,
wouldn’t it?).
=end

def bubble_sort(arr)
  n = arr.size

  # traverse all the elements of array
  for i in (0..n-1)
    # traverse 2 less array elements than previous array:
    # one less since the largest is swapped all the way to the end
    # other one less since we look at two elements at once, to avoid out of bound index
    for j in (0..(n-1)-i-1)
      # swap the adjacent elements if left is larger than right
      arr[j], arr[j+1] = arr[j+1], arr[j] if arr[j] > arr[j+1]
    end
  end

  arr
end

puts bubble_sort([4,3,78,2,0,2])
# [0,2,2,3,4,78]
