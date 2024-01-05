program leap_year
    implicit none

    print *,'2017 is leap year:',is_leap_year(2017)
    print *,'2018 is leap year:',is_leap_year(2018)
    print *,'2019 is leap year:',is_leap_year(2019)
    print *,'2020 is leap year:',is_leap_year(2020)
    print *,'2021 is leap year:',is_leap_year(2021)
    print *,'2022 is leap year:',is_leap_year(2022)
    print *,'2023 is leap year:',is_leap_year(2023)
    print *,'2024 is leap year:',is_leap_year(2024)

    contains

    ! Algorithm:
    ! If the year is divisible by 4, go to step 2. Otherwise, it's a common year.
    ! If the year is divisible by 100, go to step 3. Otherwise, it's a leap year.
    ! If the year is divisible by 400, it's a leap year. Otherwise, it's a common year.
    function is_leap_year(test_year) result (res)
        integer :: test_year
        logical :: res
        res = .false.
        if(mod(test_year,4) == 0) then
            if(mod(test_year,100) == 0) then
                if(mod(test_year,400) == 0) then
                    res = .true.
                end if
            else
                res = .true.
            end if
        end if
    end function is_leap_year

end program leap_year