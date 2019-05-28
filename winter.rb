#!/usr/bin/ruby

def solution(t)
    max = t[0]
    length = 1
    t[1..].each do |i|
        if i <= max
            length += 1
        else
            break
        end
    end
    return length
end

t = gets.split()

puts "#{solution(t)}"



