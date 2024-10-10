
is_leap_year <- function(year) {
  if (year %% 4 != 0) {
    return(FALSE)
  }
  return (year %% 100 != 0 || year %% 400 == 0)
}


test_leap_year <- function() {
  leap_years <- c(1804, 1820, 1844, 1852, 1940, 1984, 2000, 2008, 2020, 2024, 2252)
  
  for (year in leap_years) {
    if (!is_leap_year(year)) {
      cat("Wrong answer for:", year, "\n")
      return(FALSE)
    }
    def_not_leap_year <- year + 1
    if (is_leap_year(def_not_leap_year)) {
      cat("Wrong answer for:", def_not_leap_year, "\n")
      return(FALSE)
    }
  }
  return(TRUE)
}


main <- function() {
  if (!test_leap_year()) {
    stop("Test failed!")
  }
  
  years_from_example <- c(1900, 2000, 2023, 2024)
  
  for (year in years_from_example) {
    ans <- ifelse(is_leap_year(year), "Yes!", "No.")
    cat("Is", year, "a leap year?", ans, "\n")
  }
}


main()
