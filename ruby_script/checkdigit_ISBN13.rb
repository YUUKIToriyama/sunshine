#!/usr/bin/ruby
# checkdigit calculator for ISBN-13
#
# (C) 2019 YUUKIToriyama

isbn = "978410109205"

arr = isbn.split("").map {|n| n.to_i}

sum = 0
# 奇数番号の数字には3を、偶数番号の数字には1をそれぞれ掛けます。
for i in 1..isbn.length
	if (i % 2 == 0)
		arr[i-1] = arr[i-1] * 3
	else
		arr[i-1] = arr[i-1] * 1
	end
	sum = sum + arr[i-1]
end

checkdigit = 10 - (sum % 10)

puts "出力: #{isbn} - #{checkdigit}"
