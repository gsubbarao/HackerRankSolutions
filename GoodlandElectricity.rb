#https://www.hackerrank.com/contests/101hack39/challenges/pylons
# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(' ').map(&:to_i)
cities = gets.strip.split(' ').map(&:to_i)
i, t, range= 0, 0, (2*k+1)

while i <= n
    sub_array = cities[i, range]
    if sub_array.length < (k+1)
        sub_array = cities[i-k, range]
    end
    t_dup = t
    k.times do |j|
        if sub_array[k-j] == 1
            t +=1
            i += (range-j)
            break
        end
    end
    if t_dup == t
        t = -1
        break
    end
end

puts t

