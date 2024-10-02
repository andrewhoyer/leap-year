import 'dart:io';

bool isLeapYear(int year) {
  // Standard method to determine if a year is a leap year
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true; // Divisible by 400
      }
      return false; // Divisible by 100 but not by 400
    }
    return true; // Divisible by 4 but not by 100
  }
  return false; // Not divisible by 4
}

void main() {
  // Test cases
  List<int> yearsToTest = [1900, 2000, 2023, 2024];

  for (int year in yearsToTest) {
    print('Is $year a leap year? ${isLeapYear(year)}');
  }

  // User input for a specific year
  stdout.write('Enter a year to check if it is a leap year: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int userYear = int.parse(input);
    print('Is $userYear a leap year? ${isLeapYear(userYear)}');
  }
}
