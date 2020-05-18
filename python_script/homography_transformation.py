#!/usr/bin/python

import cv2
import sympy as sym
import numpy as np

# 連立方程式を解いて変換行列を求める
a,b,c,d,e,f,g,h = sym.symbols("a b c d e f g h")

coordinates = [
    {"x": 750, "y": 717, "u": 0, "v": 0},
    {"x": 1573, "y": 325, "u": 500, "v": 0},
    {"x": 2578, "y": 1481, "u": 500, "v": 500},
    {"x": 1664, "y": 2140, "u": 0, "v": 500}
]

equations = []

for i in range(4):
    coords = coordinates[i]
    equations.append(a * coords["x"] + b * coords["y"] + c - coords["u"] * (g * coords["x"] + h * coords["y"] + 1))
    equations.append(d * coords["x"] + e * coords["y"] + f - coords["v"] * (g * coords["x"] + h * coords["y"] + 1))


result = sym.solve(equations)
print(result)
#print(result[a])

matrix = np.array([
    [result[a], result[b], result[c]],
    [result[d], result[e], result[f]],
    [result[g], result[h], 1]
], dtype=np.float32)

print(matrix)


# 画像を読み込み変形させる
image = cv2.imread("tmp/IMG_4081.JPG")
"""
coordinates = [
    {"x": 750, "y": 717, "u": 0, "v": 0},
    {"x": 1573, "y": 325, "u": 500, "v": 0},
    {"x": 2578, "y": 1481, "u": 500, "v": 500},
    {"x": 1664, "y": 2140, "u": 0, "v": 500}
]
"""
src_pts = np.array([[750,717], [1573,325], [2578,1481], [1664,2140]], dtype=np.float32)
dsc_pts = np.array([[0,0], [500,0], [500,500], [0,500]], dtype=np.float32)
M = cv2.getPerspectiveTransform(src_pts, dsc_pts)
print(M)

new_image = cv2.warpPerspective(image, matrix, (500,500))

cv2.imwrite("tmp/output.png", new_image)

"""
height = image.shape[0]
width = image.shape[1]
center = (int(width/2), int(height/2))
scale = 1.0

"""
