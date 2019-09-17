#!/usr/bin/ruby

require 'net/http'

class String
	def to_uri
		return URI.parse(self)
	end
end

response = Net::HTTP.get_response(gets.chomp.to_uri)
puts response.code
