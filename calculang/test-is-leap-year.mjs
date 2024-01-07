import { is_leap_year } from "./is-leap-year_esm/cul_scope_0.mjs";

const years = [1900, 2000, 2023, 2024, 2400];

for (const year_in of years) {
  console.log(`is ${year_in} a leap year? ${is_leap_year({ year_in })}`);
}
