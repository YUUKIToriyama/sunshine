#!/usr/bin/ruby
# なんでもかんでもメソッドチェーンで書きたいのでputsの代替を

class String
	def puts
		print self + "\n"
	end
end

"こんにちゎ".puts