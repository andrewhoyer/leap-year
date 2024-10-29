% Leap year rule:
% 1. If the year is divisible by 400, it's a leap year.
% 2. If the year is divisible by 100, but not by 400, it's not a leap year.
% 3. If the year is divisible by 4 but not by 100, it's a leap year.
% 4. All other years are not leap years.

leap_year(Year) :-
    ( Year mod 400 =:= 0 -> true
    ; Year mod 100 =:= 0 -> false
    ; Year mod 4 =:= 0 -> true
    ; false).

% To check if a year is a leap year, use the query:
% ?- leap_year(2024).

% If the year is a leap year, it will return True, else it will return false.

