#!/usr/bin/ruby
# 標準入力から与えられた文字列に枠を付けます

arr = []
STDIN.map do |line|
	arr.push(line.chomp)
end

l_str = 0
for i in 1..arr.length
	if arr[i-1].length >= l_str
		l_str = arr[i-1].length
	end
end

puts "＋" + "ー" * l_str + "＋"
arr.each do |elm|
	num = l_str - elm.length
	print "｜#{elm}"
	print "　" * num
	print "｜\n"
end
puts "＋" + "ー" * l_str + "＋"
