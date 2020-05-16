from numpy.linalg import solve

"""
l_matrix = [
    [5, -4, 6],
    [7, -6, 10],
    [4, 9, 7]
]

r_matrix = [8, 14, 74]
"""

l_matrix = [
    [1, -1, 2],
    [-1, 5, -1],
    [5, -4, 6]
]
r_matrix = [3, 20, 8]

result = solve(l_matrix, r_matrix)

print(result)
