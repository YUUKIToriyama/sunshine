#!/usr/bin/python3

import sympy

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")

equations = [
        5*x - 4*y + 6*z - 8,
        7*x - 6*y + 10*z -14,
        4*x + 9*y + 7*z - 74
]

result = sympy.solve(equations)

print(result)
