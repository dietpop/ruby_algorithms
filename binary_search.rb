def search arr, value, first, last
   	while first <= last do
		mid = (first + last)/2
		if arr[mid] == value
			return mid
		end
		if arr[mid] > value
			last = mid - 1
		else
			first = mid + 1
      	end
    end
    return -1
end


# Returns the position of find_value within the array, or -1 if not found.
arr = [0,2,4,5,7,8,10,11,44,100]  # Input must be a sorted array.
find_value = 44

p search arr, find_value, 0, arr.length-1
