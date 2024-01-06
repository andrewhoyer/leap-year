
# Leap Year Determination - No Crate

This Rust program determines whether a given year is a leap year or not. It checks the leap year criteria according to the Gregorian calendar rules and explains the reasoning behind the result.

## Code Structure

The program consists of two main functions:

- `is_leap_year(year: i32) -> bool`: 
  - This function takes a year as input and returns `true` if the year is a leap year, and `false` otherwise.
  - Leap Year Rules:
    - A year is a leap year if it's divisible by 4.
    - If the year is also divisible by 100, it must additionally be divisible by 400 to be a leap year.

- `evaluate_leap_year(year: i32) -> String`: 
  - Utilizes `is_leap_year` to determine if a year is a leap year.
  - Provides a string explaining why it is or isn't a leap year.

The `main` function tests this logic with an array of test years (1900, 2000, 2023, 2024), printing the results to the console.

## How to Run

To run this program, follow these steps:

1. **Install Rust**:
   Ensure that you have Rust installed on your system. If not, you can install it from [the official Rust website](https://www.rust-lang.org/tools/install).

2. **Clone the Repository**:
   Clone this repository to your local machine.

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```
3. **Build and Run**
    ```
    cargo build
    cargo run
    ```
This will compile the program and then run it, displaying the leap year evaluation for the test years.

# Leap year Determination - Chrono Crate

This Rust program determines whether a given year is a leap year using the `chrono` crate. It incorporates logic to check leap year criteria according to the Gregorian calendar rules and provides an explanation for each year's classification.

## Code Structure

The program is structured as follows:

- `is_leap_year_with_chrono(year: i32) -> bool`: 
  - Utilizes the `chrono` crate to determine if a given year is a leap year.
  - `chrono::NaiveDate::from_ymd_opt(year, 1, 1).leap_year()` is used to perform the leap year check.

- `evaluate_leap_year_with_chrono(year: i32) -> String`: 
  - Calls `is_leap_year_with_chrono` to determine leap year status.
  - Provides detailed reasoning why a year is or isn't a leap year.

- `main` function: 
  - Tests the leap year logic with an array of years: 1900, 2000, 2023, 2024.
  - Outputs the results to the console.

## Dependencies

- `chrono`: A date and time library for Rust.

## How to Run

Follow these steps to run the program:

1. **Install Rust**:
   Make sure Rust is installed on your system. You can install it from [the official Rust website](https://www.rust-lang.org/tools/install).

2. **Clone the Repository**:
   Clone this repository to your local machine.

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

3. **Add Chrono Crate**:
   Add the `chrono` crate to your `Cargo.toml`:

   ```toml
   [dependencies]
   chrono = "0.4"

4. **Build and Run**
    ```
    cargo build
    cargo run
    ```
  The program will display the evaluation of leap years for the test years.