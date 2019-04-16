#!/usr/bin/ruby
# urlの末尾につけられたパラメータをハッシュに保存します

require "uri"

url = "http://example.com/index.html?q=宝の在り処&browser=Firefox&data=np"
url = URI.escape(url)

uri = URI.parse(url)
arr = uri.query.split("&").map do |elm|
	elm.split("=")
end
hash = arr.to_h

p hash
