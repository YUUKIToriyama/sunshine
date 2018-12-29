#!/usr/bin/gnuplot

f(x,y) = cos(x**2 + y**2) /(x**2 + y**2 + 1)

set terminal png size 700, 500
set out "3d_sample.png"

set xrange [-5:5]
set yrange [-5:5]
set hidden3d
set isosample 50,50

splot f(x,y)
