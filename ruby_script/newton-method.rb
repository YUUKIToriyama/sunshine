#!/usr/bin/ruby
# n-th root resolver using newton-method

# Usage 
# puts 2.root(2) => 1.4142135623730951
# puts 10.root(3) => 2.154434690031884

require "bigdecimal"
require "bigdecimal/util"

class Integer
	def newton_method(num)
		z = 1.to_d #* (self.abs / self)
		for i in 1..10
			z = z - (z**num - self) / (num * z**(num - 1))
		end
		return z.to_f
	end
	def root(n)
		if self < 0
			return Complex(0,(-self).newton_method(n))
		else
			return self.newton_method(n)
		end
	end
end
