-- 高階関数mapの例

map = function(func, arr)
	local tmp = {}
	for i,v in ipairs(arr) do
		tmp[i] = func(v)
	end
	return tmp
end

power = function(x) return x * x end

print(table.concat(map(power, {1,2,3,4,5}), ","))
