def quicksort arr, first, last
  return arr if last <= first
  pivot = arr[last]
  index = first
  (first...last).each do |i|
    if arr[i] < pivot
      arr[index], arr[i] = arr[i], arr[index]
      index += 1
    end
  end
  arr[last], arr[index] = arr[index], arr[last]
  quicksort arr, first, index - 1
  quicksort arr, index + 1, last
end

# quick sort in place.
arr = [3,2,6,1,7,8,4,10]
quicksort arr, 0, arr.length-1
p arr
