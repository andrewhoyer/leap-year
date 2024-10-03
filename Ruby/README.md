# Leap Year code in Ruby

This folder contains leap year code snippets for Ruby.

## Code structure
- `library_leap_year?(year) -> bool`: 
  - Utilizes date library's `Date.leap?` function to determine if a year is a leap year.

- `custom_leap_year?(year) -> bool`: 
  - This function takes a year as input and returns `true` if the year is a leap year, and `false` otherwise.
  - Leap Year Rules:
    - A year is a leap year if it's divisible by 4.
    - If the year is also divisible by 100, it must additionally be divisible by 400 to be a leap year.
  

## Running the code

1. Make sure you have Ruby installed on your system.
2. Run the program using the following command:

```
ruby leap_year.rb
```

## Program output
```
Testing library implementation:
Year 2000: true
Year 1900: false
Year 2024: true
Year 2023: false

Testing custom implementation:
Year 2000: true
Year 1900: false
Year 2024: true
Year 2023: false
```
