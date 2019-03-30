#!/usr/bin/ruby
# 文字列が砂のように崩れていくアニメーション

s = "(´・ω・)((+_+))".scan(/./)
for i in 1..s.length
	puts s.join("")
	s[-i] = [" ", ".,", ":;", "..."].sample
end