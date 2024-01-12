# Leap Year code in Objective-C

This folder contains leap year code for Objective-C in a console application. Building and using this project assumes some understanding of Xcode.

## How to run

Open `leapyear.xcodeproj` in Xcode and build the project.

Locate the binary file using Terminal. It's probably located in a folder simmilar to:

/Users/username/Library/Developer/Xcode/DerivedData/leapyear/Build/Products/Debug

In a terminal, run the following command:

`./leapyear 2000`

The output will tell you whether or not the year is a leap year or not.

You can also move the binary to /usr/local/bin to have it available as command from anywhere:

`leapyear 1900`

Sample output:

```
% leapyear 1900 
1900 is not a leap year

% leapyear 2000
2000 is a leap year

% leapyear 2023
2023 is not a leap year

% leapyear 2024
2024 is a leap year
```