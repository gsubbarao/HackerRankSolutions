# https://www.hackerrank.com/challenges/kangaroo
# 

#!/bin/ruby

x1,v1,x2,v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
location = ((x1-x2).to_f)/(v2-v1)
if (location > 0 && (location%1) == 0.0)
    puts "YES"
else
    puts "NO"
end



