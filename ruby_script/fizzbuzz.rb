#!/usr/bin/ruby
# 15で割った余りに注目してFizzBuzz

class Integer
	def fizzbuzz
		case self % 15
			when 0 then "FizzBuzz"
			when 5,10 then "Buzz"
			when 3,6,9,12 then "Fizz"
			else self
		end
	end
end

(1..100).map(&:fizzbuzz).each{|e| puts e}
