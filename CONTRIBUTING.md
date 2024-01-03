# Contributing Guidelines

## New Languages

* Each language should have its own folder, specifically named for the language
* Please check to make sure the language isn't already part of the repo

## General Code Requirements

The code for each language should, at minimum, show a clear and simple example of how to determine if any given year is a leap year.

Examples should output results for all leap year rules. Recommended years: 1900, 2000, 2023, 2024. See Leap Year Specifications for further details.

Include a README.md that explains how the code is structured and how to execute it.

Consider adding two methods of determining leap year, one that uses standard libraries, and one that doesn't.

See the Python folder for a good example to base your structure on.

## Leap Year Specifications

A leap year is any year that is:

* Divisible evenly by 4
* Exception: If divisible evenly by 100, it is not a leap year
* Exception: If divisible evenly by 400, it is a leap year

Examples:

1900 (Not a leap year, 100-year exception)
2000 (Leap year, 400-year exception)
2023 (Not a leap year, not divisible by 4)
2024 (Leap year, divisible by 4)
