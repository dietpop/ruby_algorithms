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

def run_algorithm arr, time_arr, num_iterations
  (0...num_iterations).each do |k|
    start_time = Time.now.to_f
    insertion_sort arr
    end_time = Time.now.to_f
    time_arr[k] = end_time - start_time
  end
end

def keep_min_runtimes time_arr
  count = time_arr.count(time_arr.min)
  outlier_count = time_arr.length - count
end

def show_results time_arr
  count = keep_min_runtimes time_arr
  puts "Runtime is #{(time_arr.min * 1000000000).to_i} nanoseconds"
  puts "#{time_arr.length - count} runtimes removed, #{count} runtimes kept"
end

arr = gets.strip.split(' ').map {|j| j.to_i}
num_iterations = 100
arr = []
time_arr = []

run_algorithm arr, time_arr, num_iterations
show_results time_arr
