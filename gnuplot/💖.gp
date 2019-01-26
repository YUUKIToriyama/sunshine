#!/usr/bin/gnuplot
# 正円の変形

set terminal png size 1000,1000
set out "images/transformation.png"

set sample 10000
set xrange[-1.5:1.5]

c(x) = (1 - x**2) **0.5
u(x) = (x**2)**(1/3.)

f(x) = u(x) - c(x)
g(x) = u(x) + c(x)

plot f(x) smooth cspline linewidth 7, g(x) smooth cspline linewidth 7, c(x) smooth cspline, -c(x) smooth cspline

