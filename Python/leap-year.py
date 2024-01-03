import calendar
import datetime

today = datetime.date.today()

print(f"Is this year ({today.year}) a leap year? {calendar.isleap(today.year)}")
print(f"Is 1900 a leap year? {calendar.isleap(1900)}")
print(f"Is 2000 a leap year? {calendar.isleap(2000)}")
print(f"Is 2023 a leap year? {calendar.isleap(2023)}")
print(f"Is 2024 a leap year? {calendar.isleap(2024)}")
