# Contributing Guidelines

## Hacktoberfest Contributors

If you're here for Hacktoberfest, welcome! Please follow all instructions, guidelines, and examples below, and note the following:

* Only one PR will be approved per account
* Look at the list of issues which contain a list of languages that need to be added. Add a reply if you are going to work on one of them to avoid duplication.
* If there is a language you want to add, create an Issue and model it after existing issues. It will be reviewed and the `hacktoberfest` label will be added to it if it meets the requirements.
* We are looking for serious contributions only. Incomplete, poorly formatted, or other submissions that are low quality will be rejected.

## New Languages

* Each language should have its own folder, specifically named for the language
* Check the list of Issues to see if the language has been requested or is being worked on
* Please check to make sure the language isn't already part of the repo, or contained in an existing pull request
* Add a link to your folder in the main README file as part of your pull request

## General Code Requirements

### Structure

The code for each language should, at minimum, show a clear and simple example of how to determine if any given year is a leap year.

Examples should output a result for each of the leap year rules. If your code allows user input of a date, output will be for that year only, but confirm it works for the suggested cases.

Recommended years which capture each case: 1900, 2000, 2023, 2024. See Leap Year Specifications for further details.

See the Python folder for a good example to base your structure on.

### Sample output

Use whatever output format is best for your language, but here is an example:

```
Is 1900 a leap year? False
Is 2000 a leap year? True
Is 2023 a leap year? False
Is 2024 a leap year? True
```

Your code might also ask for the user to input a year, to which the reply is for that individual year only.

### README (Language)

Include a README.md that has at least the main header. Any additional explanation you can provide that shows how the code is structured or how to execute it is appreciated.

### README (Main)

Update the README.md file in the root of the project to add a link to your new folder.

### Optional variations

Consider adding two methods of determining leap year, one that uses standard libraries if available, and one that doesn't.

## Leap Year Specifications

A leap year is any year that is:

* Divisible evenly by 4
* Exception: If divisible evenly by 100, it is not a leap year
* Exception: If divisible evenly by 400, it is a leap year

Examples with related leap year rule:

1900 (Not a leap year, 100-year exception)
2000 (Leap year, 400-year exception)
2023 (Not a leap year, not divisible by 4)
2024 (Leap year, divisible by 4)
