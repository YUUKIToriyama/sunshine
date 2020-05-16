import sympy

x = sympy.Symbol("x")
y = sympy.Symbol("y")

equations = [
    2*x + 3*y - 16,
    x + 7*y - 19
]

result = sympy.solve(equations)
print(result)
