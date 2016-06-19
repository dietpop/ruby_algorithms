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

def remove_outliers time_arr
  ave_time = time_arr.reduce(:+) / time_arr.length
  delta_time = time_arr.max - time_arr.min
  outlier_count = 0
  while delta_time > ave_time * 0.01
    time_arr.delete(time_arr.max)
    ave_time = time_arr.reduce(:+) / time_arr.length
    delta_time = time_arr.max - time_arr.min
    outlier_count += 1
  end
  outlier_count
end


test_data = 'test_array_1000.txt'
num_iterations = 100
arr = []
time_arr = []


(0...num_iterations).each do |k|
  File.foreach(test_data) do |i|
    arr = i.strip.split(' ').map {|j| j.to_i}
    start_time = Time.now.to_f
    insertion_sort arr
    end_time = Time.now.to_f
    time_arr[k] = end_time - start_time
  end
end


p "Outlier count"
p remove_outliers time_arr
p "remaining elements"
p time_arr.length

p time_arr
p "difference between max and min times"
p format("%.8f" % (time_arr.max - time_arr.min))
p "average runtime"
p format("%.8f" % (time_arr.reduce(:+) / time_arr.length))
