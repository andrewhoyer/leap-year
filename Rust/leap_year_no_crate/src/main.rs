fn main() {
    let test_years = [1900, 2000, 2023, 2024];

    for &year in &test_years {
        println!("{}: {}", year, evaluate_leap_year(year));
    }
}

fn is_leap_year(year: i32) -> bool {
    if year % 4 == 0 {
        if year % 100 == 0 {
            return year % 400 == 0;
        }
        true
    } else {
        false
    }
}

fn evaluate_leap_year(year: i32) -> String {
    if is_leap_year(year) {
        format!("is a leap year.")
    } else {
        let reason = if year % 4 != 0 {
            "not divisible by 4"
        } else if year % 100 != 0 {
            "divisible by 4 but not by 100"
        } else {
            "divisible by 100 but not by 400"
        };
        format!("is not a leap year ({})", reason)
    }
}
