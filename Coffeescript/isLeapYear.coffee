isLeapYear = (year) ->
  if year % 4 is 0
    if year % 100 is 0
      year % 400 is 0
    else
      true
  else
    false

console.log "Is 1900 a leap year? #{isLeapYear(1900)}"
console.log "Is 2000 a leap year? #{isLeapYear(2000)}"
console.log "Is 2023 a leap year? #{isLeapYear(2023)}"
console.log "Is 2024 a leap year? #{isLeapYear(2024)}"
