# Leap Year code in ACPUL

This folder contains code in ACPUL [acpul.org](https://acpul.org/) to determine whether a year is a leap year.

NOTE: Use Python syntax highlighting for ACPUL in Sublime Text or Markdown

## Running tests from CLI

To running test from CLI just use `acpul` interpreter to run with `-i <path>` to source directory and `-e <formulaId>` with number of formula to execute

```sh
acpul -i . -e 20240900
```

## Running tests inside ACPU

Just copy file to ACPU project directory and create new formula node in bootloader

```py
node.new.this.ex(r0, 20240901, 0);
```

