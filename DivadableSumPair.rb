#!/bin/ruby

#https://www.hackerrank.com/challenges/divisible-sum-pairs/submissions/code/23397938

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
def sum_pair(a,k)
  result = 0
  n = a.length
  a.each_with_index do |item1, i|
    a.each_with_index do |item2, j|
        if i < j && ((item1 + item2)%k == 0)
            result += 1 
        end
    end
  end
  result
end
puts sum_pair(a,k)

