# Leap Year Code in Prolog

This folder contains leap year code for Prolog in a console application. Running this project assumes some understanding of SWI-Prolog.

## How to Run

Open a terminal and navigate to the directory containing the `leap_year_.pl` file.

In the terminal, run the following command to start the SWI-Prolog interpreter:

```sh
swipl
```

Load the Prolog file by running:

```prolog
?- [leapyear].
```

To check if a year is a leap year, use the following query:

```prolog
?- is_leap_year(2000).
```

The output will tell you whether or not the year is a leap year.

Sample output:

```prolog
?- is_leap_year(1900).
false.

?- is_leap_year(2000).
true.

?- is_leap_year(2023).
false.

?- is_leap_year(2024).
true.
```

You can also create a script to run the Prolog code directly from the command line:

```sh
swipl -s leapyear.pl -g "is_leap_year(2000), halt."
```

This will output `true` or `false` based on whether the year is a leap year.