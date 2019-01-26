#!/bin/bash
# convertコマンドを使って任意の文字を画像ファイルに変換するスクリプト

mkdir images
echo "先輩参戦！！！" | sed 's/./&\n/g' | sed '$d' \
	| xargs -I@ convert -font IPA明朝 -size 1000x1000 -background Black -fill White -gravity Center -pointsize 500 -rotate -5 label:"@" images/@.png
