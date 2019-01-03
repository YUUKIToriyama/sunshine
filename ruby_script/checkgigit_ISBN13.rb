#!/usr/bin/ruby
# checkdigit calculator for ISBN-13
#
# (C) 2019 YUUKIToriyama

isbn = "978410109205"

arr_isbn = isbn.split("")

sum = 0
# 奇数番号の数字には3を、偶数番号の数字には1をそれぞれ掛けます。
for i in 1..isbn.length
	if (i % 2 == 1)
		arr_isbn[i-1] = arr_isbn[i-1].to_i * 3
	else
		arr_isbn[i-1] = arr_isbn[i-1].to_i * 1
	end
	sum = sum + arr_isbn[i-1]
end

checkdigit = 10 - (sum % 10)

puts "出力: " + isbn + "-" + checkdigit.to_s
