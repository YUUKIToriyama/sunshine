#!/usr/bin/ruby
# HTTPのステータスコードを見るには標準ライブラリのnet/httpを使うと便利です

require 'net/http'

address = gets.chomp
uri = URI.parse(address)
response = Net::HTTP.get_response(uri)
puts "#{address} にアクセスした結果、 #{response.code}"
