#!/usr/bin/env ruby
# Usage
# 標準入力からJSONファイルを読み込ませるとインデント等が整理されて人間にも読みやすい形で出力されます。
# cat a.json | ruby this_script.rb > b.json

require 'json'

io = open("/dev/stdin").read

json = JSON.parse(io)

puts JSON.pretty_generate(json)
