def insertion_sort arr
  (1...arr.length).each do |i|
    x = arr[i]
    j = i-1
    while j >= 0 && arr[j] > x
      arr[j+1] = arr[j]
      j = j - 1
    end
    arr[j+1] = x
  end
end

arr = [8,3,5,4,6,7,10,1]

insertion_sort arr
p arr
