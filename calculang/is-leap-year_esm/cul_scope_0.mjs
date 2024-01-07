// inputs
export const year = ({ year_in }) => year_in;

// function
export const is_leap_year = ({ year_in }) =>
year({ year_in }) % 4 == 0 && year({ year_in }) % 100 != 0 || year({ year_in }) % 400 == 0;