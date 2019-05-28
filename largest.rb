#!/usr/bin/ruby

def solution(num)
    arr = []
    ans = 0
    while num > 0
        arr.push(num % 10)
        num /= 10
    end
    arr.sort.reverse.each do |i|
        ans *= 10
        ans += i
    end
    return ans
end

num = gets.to_i

puts "#{solution(num)}"