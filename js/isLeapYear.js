function isLeapYearWithoutLib(year, usLib) {
    return ((year % 4 === 0) && (year % 100 !== 0)) || (year % 400 === 0);
}

function isLeapYearWithLib(year) {
    return new Date(year, 1, 29).getDate() === 29;
}

const dates = [1900, 2000, 2023, 2024, 2400];

for (const year of dates) {
    console.log(`is ${year} a leap year? ${isLeapYearWithLib(year)}`);
    console.log(`is ${year} a leap year without lib? ${isLeapYearWithoutLib(year)}`);
}
