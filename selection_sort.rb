def selection_sort arr
	(0...arr.length-1).each do |i|
		min_index = i
	    (i...arr.length).each do |j|
	    	if arr[j] < arr[min_index]
	    		min_index = j
	    	end
	    end
        arr[min_index], arr[i] = arr[i], arr[min_index]
        #p arr  See the values move within the array on each iteration.
     end
 end

arr = [7, 5, 8, 3, 9, 2, 0, 1, 10, 15, 4]
selection_sort arr
p arr
