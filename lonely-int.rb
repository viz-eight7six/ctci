#!/bin/ruby

require 'set'

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
res = Set.new
    a.each { |el|
        if !res.include?(el)
            res.add(el)
        else
            res.delete(el)
        end
        }
res = res.to_a()
puts res[0]
