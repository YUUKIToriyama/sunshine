#!/usr/bin/ruby
# 角谷の問題を解きます

def kakutani_seq(num)
	arr = Array.new
	while !arr.include?(num)
		arr.push(num)
		num = num / 2 if num.even?
		num = num * 3 + 1 if num.odd?
	end
	return arr
end

upperlimit = gets.to_i
range = Range.new(3, upperlimit).to_a

while range.length > 0
	n = range.shift
	puts "<<#{n}>>\n" + kakutani_seq(n).join(", ")
	range = range - kakutani_seq(n)
end
