#!/usr/bin/python3

import sympy as sym

x = sym.Symbol("x")
f = sym.Function("f")

f = x**2 + 12*x - 20

sym.plot(f)
