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


int main() {
  // Testing the function - just grabbed a bunch randomly:
  std::vector<int> leap_years = {
    1804, 1820, 1844, 1852, 1940,
    1984, 2000, 2008, 2020, 2024, 2252
  };
  for (std::size_t i = 0; i < leap_years.size(); i++){
    if (!is_leap_year(leap_years[i])){
      std::cout << "Wrong answer for: " << leap_years[i] << std::endl;
      return 1;
    }
    // we know leap_year + 1 isn't a leap year
    int def_not_leap_year = leap_years[i] + 1;
    if (is_leap_year(def_not_leap_year)) {
      std::cout << "Wrong answer for: " << def_not_leap_year << std::endl;
      return 1;
    }
  }
  std::cout << "All good!" << std::endl;
  return 0;
}