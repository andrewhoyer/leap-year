let is_leap_year year =
  (year mod 4 = 0 && year mod 100 <> 0) || year mod 400 = 0

let dates = [1900; 2000; 2023; 2024; 2400]

let () =
  List.iter (fun year ->
      Printf.printf "Is %d a leap year? %b\n" year (is_leap_year year)
    ) dates
