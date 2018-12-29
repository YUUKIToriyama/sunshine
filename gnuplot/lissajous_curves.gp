#!/usr/bin/gnuplot

set terminal png size 500,500
set out "lissajous_curves.png"

set parametric

set samples 1000
set xrange [-1.2:1.2]
set yrange [-1.2:1.2]

plot [0:2*pi] cos(3*t), sin(2*t) title "Lissajous' curves" with linespoints
