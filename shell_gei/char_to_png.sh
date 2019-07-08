#!/bin/bash
# convertコマンドを使って任意の文字を画像ファイルに変換するスクリプト

convert -font "IPA-P明朝" -size 500x500 -background Black -fill White -gravity Center -pointsize 500 $(echo "先輩参戦！！" | grep -o . | awk '{printf "label:\"%s\" ", $1}') -monitor images.png
