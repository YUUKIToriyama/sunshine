#!/usr/bin/python3

import sympy as sym

x = sym.Symbol("x")

expr = x ** 2 + 5 * x + 1

#sym.diff(expr)
d = sym.Derivative(expr)
dx = d.doit()

print(dx)
