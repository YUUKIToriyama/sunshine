#!/usr/bin/ruby
# 3x3数表作成機

# (完成図)
# mtrx[0][0], mtrx[0][1], mtrx[0][2]
# mtrx[1][0], mtrx[1][1], mtrx[1][2]
# mtrx[2][0], mtrx[2][1], mtrx[2][2]

arr = [1,2,3,4,5,6,7,8,9]
mtrx = Array.new

for i in 1..3
	tmp = Array.new
	for l in 1..3
		r = rand(arr.length)
		tmp.push(arr[r])
		arr.delete_at(r)
	end
	mtrx.push(tmp)
end

puts mtrx[0].join(",")
puts mtrx[1].join(",")
puts mtrx[2].join(",")
