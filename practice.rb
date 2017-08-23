#!/bin/ruby
# input
# 5 4
# 1 2 3 4 5

# output
#
# 5 1 2 3 4
#

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

a.rotate(k).each do |num|
    print num
    print " "
end
