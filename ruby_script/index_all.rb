#!/usr/bin/ruby
# Array.indexがちょっと使いづらいので拡張

class Array
	def index_all(arg)
		arr = []
		self.each_with_index do |elm, idx|
			if elm == arg
				arr.push(idx)
			end
		end
		return arr
	end
end

# example
names = ["yamada", "tanaka", "suzuki", "suzuki"]
puts names.index("suzuki")
puts names.index_all("suzuki").join(", ")