from numpy.linalg import solve

left = [
    [2, 3],
    [1, 7]
]

right = [
    16,
    19
]

print(solve(left, right))

sahen_matrix = [[3/4, 5/2], [2, -1]]
uhen_matrix = [-6, 7]

result = solve(sahen_matrix, uhen_matrix)

print(result)
