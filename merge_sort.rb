def mergesort arr, first, last
	if first < last
		mid = (last + first)/2
		mergesort arr, first, mid
		mergesort arr, mid+1, last
		merge arr, first, mid, last
	end
end

def merge arr, l, m, r
	l_arr=[]
	r_arr=[]
	(0...m-l+1).each do |i|
		l_arr[i] = arr[l+i]
	end
	(0...r-m).each do |j|
		r_arr[j] = arr[m+j+1]
	end

	i,j = 0,0
	k=l
	while (i<m-l+1) && (j<r-m)
		if l_arr[i] <= r_arr[j]
			arr[k] = l_arr[i]
			i+= 1
		else
			arr[k] = r_arr[j]
			j+=1
		end
		k+=1
	end

	while (i<m-l+1)
		arr[k] = l_arr[i]
		i+=1
		k+=1
	end
	while (j<r-m)
		arr[k] = r_arr[j]
		j+=1
		k+=1
    end
end


arr = [10,1,4,3,7,6,8]
mergesort arr, 0, arr.length - 1
p arr
