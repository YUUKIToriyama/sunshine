#!/usr/bin/ruby

require 'net/https'

URL = "secure.example.com"
USER = "ytoriyama"
PW = "********"

site = Net::HTTP.new(URL, 443)
site.use_ssl = true
response = site.get2("login.html", "Authorization" => "Basic" + ["#{USER}:#{PW}"].pack("m").strip)
