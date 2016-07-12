#https://www.hackerrank.com/contests/101hack39/challenges/equality-in-a-array
# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.to_i
hash = Hash.new(0)
array = gets.strip.split(' ').map(&:to_i)
array.each do |v|
  hash[v] += 1
end
result_arr = hash.map{|k,v|  v}.sort
result_arr.pop
puts result_arr.inject(0){|sum,x| sum + x }
