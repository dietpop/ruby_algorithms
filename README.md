###Contains the classic search and sort algorithms written in Ruby.

Ruby has extremely forgiving **magic** where you don't have to declare variable types nor size.  This makes Ruby less efficient for algorithms.

Let's measure the actual performance of these Ruby algorithms against C, C++, and Java.

My test setup utilizes the HackerRank.com engine which uploads algorithms written in 38+ different languages. Macbooks are not suitable for benchmarking because the runtimes vary greatly and are 28,000 times longer than HackerRank's engine.

Here are HackerRank's AWS/EC2 configurations by language: https://www.hackerrank.com/environment

This is an example of how I ran the Insertion Sort in Ruby.

![insertion sort in ruby benchmarked on Hackerrank.com](https://github.com/dietpop/ruby_algorithms/blob/master/benchmarks/insertion_sort_ex.png)
