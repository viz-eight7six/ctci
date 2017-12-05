# Enter your code here. Read input from STDIN. Print output to STDOUT

v = gets.strip.to_i
n = gets.strip.to_i
arr = gets.strip.split(' ')

arr.each_with_index do |num, idx|
    if num.to_i == v
        puts idx
    end
end
