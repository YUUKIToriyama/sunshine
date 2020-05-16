#!/usr/bin/python3

import sympy as sym

x = sym.Symbol("x")
expr = x**2 + 4*x + 3
eq = sym.Eq(expr)

root = sym.solve(eq)
print(root)
