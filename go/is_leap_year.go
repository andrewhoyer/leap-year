package main

import "fmt"

var years = []int{1900, 2000, 2023, 2024, 2400}

func isLeap(year int) bool {
	return year%4 == 0 && year%100 != 0 || year%400 == 0
}

func main() {
	for _, year := range years {
		fmt.Printf("is %d a leap year? %t \n", year, isLeap(year))
	}
}
