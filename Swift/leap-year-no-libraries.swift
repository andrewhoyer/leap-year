import Foundation

var years: [Int] = [1900, 2000, 2023, 2024]

for year in years {
    
    var leap = false
    
    if (year % 4 == 0) {
        if (year % 100 == 0) {
            if (year % 400 == 0) {
                leap = true
            }
        } else {
            leap = true
        }
    }
    
    if (leap) {
        print("\(year) is a leap year!")
    } else {
        print("\(year) is not a leap year!")
    }
    
}
