package main

import (
	"fmt"
	"time"
)

var years = []int{1900, 2000, 2023, 2024, 2400}

func isLeapWithLib(year int) bool {
	return time.Date(year, time.February, 29, 0, 0, 0, 0, time.UTC).Day() == 29
}

func isLeapWithoutLib(year int) bool {
	return year%4 == 0 && year%100 != 0 || year%400 == 0
}

func main() {
	for _, year := range years {
		fmt.Printf("is %d a leap year? %t \n", year, isLeapWithLib(year))
		fmt.Printf("is %d a leap year without lib? %t \n", year, isLeapWithoutLib(year))
	}
}
