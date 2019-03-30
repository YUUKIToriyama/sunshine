#!/usr/bin/ruby
# factorコマンドをrubyで書いてみました

# Usage
# n = 30030; puts factor(n).join(", ")


def factor(num)
	arr = []
	a = 2
	while (a <= num / 2)
		while (num % a  == 0)
			arr.push(a)
			num = num / a
		end
		a = a + 1
	end
	arr.push(num) unless num == 1
	return arr
end

for i in 1..10
	puts factor(i).join(", ").prepend("#{i}: ")
end