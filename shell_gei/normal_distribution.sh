#!/usr/bin/env bash

for i in {1..100000}; do
	echo "($RANDOM%100)+($RANDOM%100)+($RANDOM%100)"
done \
  | bc | sed 's/$/\/3/g' | bc \
  | sort -n | uniq -c | awk '{print $2,$1}' \
  | gnuplot -e 'set terminal png; set out "シェル芸疑似正規分布.png"; plot [0:100] "-" smooth cspline with lines'
