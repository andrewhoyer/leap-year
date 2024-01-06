// to compile and run (ubuntu or wsl ubuntu)
// g++ leap-year.cpp -o a.out 
// ./a.out
#include<iostream>
#include<vector>


bool is_leap_year(int year){
  if (year % 4 != 0) {
    return false;
  }
  return (year % 100 != 0 || year % 400 == 0);
}


bool test() {
  // Testing the function - just grabbed a bunch randomly:
  std::vector<int> leap_years = {
    1804, 1820, 1844, 1852, 1940,
    1984, 2000, 2008, 2020, 2024, 2252
  };
  for (std::size_t i = 0; i < leap_years.size(); i++){
    if (!is_leap_year(leap_years[i])){
      std::cout << "Wrong answer for: " << leap_years[i] << std::endl;
      return false;
    }
    // we know leap_year + 1 isn't a leap year
    int def_not_leap_year = leap_years[i] + 1;
    if (is_leap_year(def_not_leap_year)) {
      std::cout << "Wrong answer for: " << def_not_leap_year << std::endl;
      return false;
    }
  }
  return true;
}

int main() {
  if (!test()){
    return 1;
  }

  std::vector<int> years_from_example = {1900, 2000, 2023, 2024};
  for (size_t i = 0; i < years_from_example.size(); i++){
    std::string ans = (is_leap_year(years_from_example[i])) ? "Yes!" : "No.";
    std::cout << "Is " << years_from_example[i] << " a leap year? " << ans << std::endl;
  }
  return 0;
}