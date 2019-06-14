#!/usr/bin/ruby
# 駅データ.jpから借りてきた路線データを加工変形するスクリプト

require 'json'

# 位置を表すピンに何色を使うかを指定できます
pin_color = "#fd7e00"

# ダウンロードしてきた路線データは先頭行と最終行の余計な部分を削除してから読み込ませてください
f = File.open("./ekidata_jp.json")
hash = JSON.load(f)

hash_new = Hash.new
hash_new["type"] = "FeatureCollection"
hash_new["features"] = Array.new

hash["station_l"].each do |elm|
	tmp = Hash.new
	tmp["type"] = "Feature"
	tmp["properties"] = {"title": elm["station_name"], "description": elm["station_cd"], "marker-color": pin_color, "marker-size": "medium", "marker-symbol": ""}
	tmp["geometry"] = {"type": "Point", "coordinates": [elm["lon"], elm["lat"]]}

	hash_new["features"].push(tmp)
end

json_str = JSON.pretty_generate(hash_new)

puts json_str
