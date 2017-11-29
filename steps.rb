#!/bin/ruby
def helper(value)
    if(value >= 4)
        puts "val: #{value}"
        sum = helper2(value-3)
        if sum
            puts "sum is #{sum}"
        end
        return helper(value - 3) * value
    elsif(value == 3)
        return 4
    elsif(value == 2)
        return 2
    elsif(value == 1)
        return 1
    else
        return 0
    end
end

def helper2(value)
    return helper(value)
end

s = gets.strip.to_i
for a0 in (0..s-1)
    n = gets.strip.to_i
    puts helper(n)
end
