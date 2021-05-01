# Bubble Sort implementation

# sorting_pair takes a pair in an array and sort it
def sorting_pair(pair) 
  if pair[0] <= pair[1] then pair else [pair[1], pair[0]] end
end

# sending_pair receive an array and an index and send the pair to sorting_pair
def sending_pair(arr, index)
  sorting_pair([arr[index], arr[index+1]])
end

# bubble_sort takes an arr and call sending pair n * n times to ensure that the arr is sorted.
def bubble_sort(arr)
  (arr.size-1).times do
    (arr.size-1).times do |index|
      arr[index], arr[index+1] = sending_pair(arr, index)
    end
  end
  arr
end

# print sending_pair([1,3,2], 1)

puts bubble_sort([4,3,78,2,0,2,3,4,5,65,3,3,4,65,8,6756,45,23,654,324,34,543,543,534,324,34,534,564,654,654,6534,543,543,232,34,1,4,6,7])