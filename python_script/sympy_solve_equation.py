#!/usr/bin/python3

import sympy as sym

a,b,c = sym.symbols("a b c")
x = sym.Symbol("x")
eq = sym.Eq(a * x**2 + b * x + c)

print(eq)

roots = sym.solve(eq, x)

print(roots)
