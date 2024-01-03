def is_leap_year(year):
    if year % 4 == 0:
        if year % 100 == 0:
            if year % 400 == 0:
                return True
            return False
        return True
    else:
        return False

print(f"Is 1900 a leap year? {is_leap_year(1900)}")
print(f"Is 2000 a leap year? {is_leap_year(2000)}")
print(f"Is 2023 a leap year? {is_leap_year(2023)}")
print(f"Is 2024 a leap year? {is_leap_year(2024)}")
