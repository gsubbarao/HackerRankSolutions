# Solving https://www.hackerrank.com/challenges/lisa-workbook?utm_source=101hack39-reminder-24hrs&utm_medium=email&utm_campaign=101hack39 Campaign 
# Enter your code here. Read input from STDIN. Print output to STDOUT
n, k = gets.strip.split(' ').map(&:to_i)
chaptors = gets.strip.split(' ').map(&:to_i)
pageCount, specialProblems = 1, 0

chaptors.each do |c|
    c.times do |i|
        specialProblems += 1 if i+1 == pageCount
        pageCount += 1 if (i+1) % k == 0
    end
    pageCount += 1 unless c%k == 0
end
puts specialProblems
