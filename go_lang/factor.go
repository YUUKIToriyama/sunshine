package main

import "fmt"

func factor(num int) []int {
	arr := []int{}
	a := 2
	for {
		if a > num / 2 {
			break
		}
		for {
			if num % a != 0 {
				break
			}
			arr = append(arr, a)
			num = num / a
		}
		a = a + 1
	}
	if num != 1 {
		arr = append(arr, num)
	}
	return arr
}

func main() {
	fmt.Println(factor(12))
}


