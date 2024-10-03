require 'date' # Required library for the Date.leap? method

# Library implementation
def library_leap_year?(year)
  Date.leap?(year)
end

# Custom implementation
def custom_leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

# Sample input
years = [2000, 1900, 2024, 2023]

# Testing library implementation
puts "\nTesting library implementation:"
years.each do |year|
  puts "Year #{year}: #{library_leap_year?(year)}"
end

puts "\n"

# Testing custom implementation
puts "Testing custom implementation:"
years.each do |year|
  puts "Year #{year}: #{custom_leap_year?(year)}"
end
