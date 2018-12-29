#!/usr/bin/gnuplot

set terminal png size 1000,1000
set out "archimedes_spiral.png"

set parametric
set samples 10000
set xrange [-30:30]
set yrange [-30:30]

plot [0:8*pi] t*cos(t), t*sin(t) with linespoints

