#!/usr/bin/gnuplot

set terminal png font "VL PGothic" size 1000,1000
set out "rose_curve.png"

set parametric

set samples 1000
set xrange [-1.2:1.2]
set yrange [-1.2:1.2]

plot [0:2*pi] cos(t)*sin(7*t), sin(t)*sin(7*t) title "正葉曲線(Rose Curve)" with linespoints 
