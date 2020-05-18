#!/usr/bin/python3

import sympy as sym

x = sym.Symbol("x")
f = sym.Function("f")

eq = f(x).diff(x) - x**2 * sym.sin(x) + sym.sqrt(1 + x**2)

print(sym.dsolve(eq))
