###The classic search and sort algorithms written in Ruby with benchmark runtimes.

Ruby has extremely forgiving **magic** where you don't have to declare variable types nor size.  This makes Ruby less efficient for algorithms.

Let's measure the actual performance of these Ruby algorithms against C, C++, and Java.  This is a work in progess and currently Insertion Sort in Ruby runtimes are measured.  See below.

My test setup utilizes the HackerRank.com engine which uploads algorithms written in 38+ different languages. Macbooks are not suitable for benchmarking because the runtimes vary greatly from iteration to iteration.

Here are HackerRank's AWS/EC2 configurations by language: https://www.hackerrank.com/environment

This is an example of how I ran the Insertion Sort in Ruby.

![insertion sort in ruby benchmarked on Hackerrank.com](https://github.com/dietpop/ruby_algorithms/blob/master/benchmarks/insertion_sort_ex.png)
