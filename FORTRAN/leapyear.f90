program leap_year
    implicit none

    print *,'1900 is leap year:',is_leap_year(1900),reasoning(1900)
    print *,'2000 is leap year:',is_leap_year(2000),reasoning(2000)
    print *,'2019 is leap year:',is_leap_year(2019),reasoning(2019)
    print *,'2020 is leap year:',is_leap_year(2020),reasoning(2020)
    print *,'2021 is leap year:',is_leap_year(2021),reasoning(2021)
    print *,'2022 is leap year:',is_leap_year(2022),reasoning(2022)
    print *,'2023 is leap year:',is_leap_year(2023),reasoning(2023)
    print *,'2024 is leap year:',is_leap_year(2024),reasoning(2024)

    contains

    ! Algorithm:
    ! If the year is divisible by 4, go to step 2. Otherwise, it's a common year.
    ! If the year is divisible by 100, go to step 3. Otherwise, it's a leap year.
    ! If the year is divisible by 400, it's a leap year. Otherwise, it's a common year.
    function is_leap_year(test_year) result (res)
        integer :: test_year, div4, div100, div400
        logical :: res
        res = .false.

        div4 = mod(test_year,4)
        div100 = mod(test_year,100)
        div400 = mod(test_year,400)

        if(div4 == 0) then
            if(div100 == 0) then
                if(div400 == 0) then
                    res = .true.
                end if
            else
                res = .true.
            end if
        end if

    end function is_leap_year

    function reasoning(test_year) result(reason)
        integer :: test_year, div4, div100, div400
        character(len=80) :: reason
        logical :: res
        res = .false.
        reason = ''

        div4 = mod(test_year,4)
        div100 = mod(test_year,100)
        div400 = mod(test_year,400)

        if(div4 == 0) then
            if(div100 == 0) then
                if(div400 == 0) then
                    res = .true.
                end if
            else
                res = .true.
            end if
        end if

        if(res .eqv. .true.) then
            if(div4 == 0) then
                reason = trim(reason) // 'Divisible by 4'
            end if
            if(div400 == 0) then
                reason = trim(reason) // ', 400 year rule exemption to pass'
            end if
        else
            if(div4 == 0) then
                reason = trim(reason) // 'Divisible by 4'
            end if
            if(div100 == 0) then
                reason = trim(reason) // ', 100 year rule exemption to fail'
            end if
            if(reason == '') then
                reason = 'Not divisible by 4'
            end if
        end if
    end function reasoning

end program leap_year