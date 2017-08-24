#!/bin/ruby

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')
mag_hash = Hash.new(0)
magazine.each do |word|
    mag_hash[word] += 1
end
ransom.each do |word|
    if mag_hash[word] == 0
        puts "No"
        return false
    else
        mag_hash[word] -= 1
    end
end

puts "Yes"
