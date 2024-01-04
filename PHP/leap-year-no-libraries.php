<?php

// set the default timezone to use.
date_default_timezone_set('UTC');

function is_leap_year($year) {

    $leap = false;

    if ($year % 4 == 0) {
        if ($year % 100 == 0) {
            if ($year % 400 == 0) {
                $leap = true;
            }
        } else {
            $leap = true;
        }
    }

    return $leap;
}

echo "Is 1900 a leap year? ", is_leap_year(1900) ? "Yes" : "No", "<br>";
echo "Is 2000 a leap year? ", is_leap_year(2000) ? "Yes" : "No", "<br>";
echo "Is 2023 a leap year? ", is_leap_year(2023) ? "Yes" : "No", "<br>";
echo "Is 2024 a leap year? ", is_leap_year(2024) ? "Yes" : "No", "<br>";
echo "Is 2400 a leap year? ", is_leap_year(2400) ? "Yes" : "No", "<br>";

?>