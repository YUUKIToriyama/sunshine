#!/usr/bin/ruby
# checkdigits calculator for ISBN-10
#
# (C) 2019 YUUKIToriyama

isbn = "410109205"

arr_isbn = isbn.split("")

sum = 0

for i in 1..isbn.length
	arr_isbn[i-1] = arr_isbn[i-1].to_i * (11 - i)
	sum = sum + arr_isbn[i-1]
end

checkdigit = 11 - (sum % 11)

if (checkdigit == 10)
	checkdigit = "X"
elsif (checkdigit == 11)
	checkdigit = 0
end

puts "出力: " + isbn + "-" + checkdigit.to_s
