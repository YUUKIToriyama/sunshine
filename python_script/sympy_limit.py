#!/usr/bin/python3

from sympy import Symbol, Limit, sqrt, pprint

x = Symbol('x')

for i, t in enumerate([
        ((x ** 2 + 3 * x - 4) / (x - 1), x, 1),
        ((x ** 2 + -5 * x + 6) / (x ** 2 - (3 + 1/2) * x + 3 * 1/2), x, 3),
        ((x ** 2 - x - 2) / (x ** 3 - 3 * x - 2), x, 2),
        ((4 * sqrt(x + 1) - 4 * sqrt(2)) / (x - 1), x, 1)
                      ]):
    print('({})'.format(i + 1))
    pprint(Limit(*t).doit())
