#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    stack = []
    breaked = false
    expression = gets.strip
    expression.split('').each do |char|
        if char == '{' || char == '[' || char =='('
            stack << char
        elsif stack == []
            #if first char is not open bracket
            puts 'NO'
            breaked = true
            break
        elsif char =='}'
            if stack.pop != '{'
                puts 'NO'
                breaked = true
                break
            end
        elsif char ==']'
            if stack.pop != '['
                puts 'NO'
                breaked = true
                break
            end
        elsif char ==')'
            if stack.pop != '('
                puts 'NO'
                breaked = true
                break
            end
        else
            puts "ERROR INPUT"
            breaked = true
            break
        end
    end
    if !breaked && stack == []
        puts 'YES'
    elsif !breaked
        puts 'NO'
    end
end
