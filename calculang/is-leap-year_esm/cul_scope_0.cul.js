// inputs
export const year = () => year_in;

// function
export const is_leap_year = () =>
  (year() % 4 == 0 && year() % 100 != 0) || year() % 400 == 0;
