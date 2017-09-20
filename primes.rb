#!/bin/ruby

p = gets.strip.to_i
for a0 in (0..p-1)
    n = gets.strip.to_i
    for i in (2...n) do
        if n%i == 0
            puts "Not prime"
            break
        elsif i == n-1
           puts "Prime"
        end
    end
end
