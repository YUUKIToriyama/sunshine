#!/usr/bin/ruby
# 9x9数表作成機

# (完成図)
# mtrx[0][1], mtrx[0][2], mtrx[0][3], mtrx[0][4], mtrx[0][5], mtrx[0][6], mtrx[0][7], mtrx[0][8], mtrx[0][9]
# mtrx[1][1], mtrx[1][2], mtrx[1][3], mtrx[1][4], mtrx[1][5], mtrx[1][6], mtrx[1][7], mtrx[1][8], mtrx[1][9]
# mtrx[2][1], mtrx[2][2], mtrx[2][3], mtrx[2][4], mtrx[2][5], mtrx[2][6], mtrx[2][7], mtrx[2][8], mtrx[2][9]
# mtrx[3][1], mtrx[3][2], mtrx[3][3], mtrx[3][4], mtrx[3][5], mtrx[3][6], mtrx[3][7], mtrx[3][8], mtrx[3][9]
# mtrx[4][1], mtrx[4][2], mtrx[4][3], mtrx[4][4], mtrx[4][5], mtrx[4][6], mtrx[4][7], mtrx[4][8], mtrx[4][9]
# mtrx[5][1], mtrx[5][2], mtrx[5][3], mtrx[5][4], mtrx[5][5], mtrx[5][6], mtrx[5][7], mtrx[5][8], mtrx[5][9]
# mtrx[6][1], mtrx[6][2], mtrx[6][3], mtrx[6][4], mtrx[6][5], mtrx[6][6], mtrx[6][7], mtrx[6][8], mtrx[6][9]
# mtrx[7][1], mtrx[7][2], mtrx[7][3], mtrx[7][4], mtrx[7][5], mtrx[7][6], mtrx[7][7], mtrx[7][8], mtrx[7][9]
# mtrx[8][1], mtrx[8][2], mtrx[8][3], mtrx[8][4], mtrx[8][5], mtrx[8][6], mtrx[8][7], mtrx[8][8], mtrx[8][9]
# mtrx[9][1], mtrx[9][2], mtrx[9][3], mtrx[9][4], mtrx[9][5], mtrx[9][6], mtrx[9][7], mtrx[9][8], mtrx[9][9]


mtrx = Array.new

for i in 1..9
	arr = [1,2,3,4,5,6,7,8,9]
	tmp = Array.new
	while (arr.length > 0)
		r = rand(arr.length)
		tmp.push(arr[r])
		arr.delete_at(r)
	end
	mtrx.push(tmp)
end

mtrx.each do |array|
	puts array.join(", ")
end
