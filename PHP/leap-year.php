<?php
// set the default timezone to use.
date_default_timezone_set('UTC');

function is_leap_year($timestamp) {
    return date('L', $timestamp);
}

echo "Is 1900 a leap year? ", is_leap_year(mktime(0, 0, 0, 1, 1, 1900)) ? "Yes" : "No", "<br>";
echo "Is 2000 a leap year? ", is_leap_year(mktime(0, 0, 0, 1, 1, 2000)) ? "Yes" : "No", "<br>";
echo "Is 2023 a leap year? ", is_leap_year(mktime(0, 0, 0, 1, 1, 2023)) ? "Yes" : "No", "<br>";
echo "Is 2024 a leap year? ", is_leap_year(mktime(0, 0, 0, 1, 1, 2024)) ? "Yes" : "No", "<br>";
echo "Is 2400 a leap year? ", is_leap_year(mktime(0, 0, 0, 1, 1, 2400)) ? "Yes" : "No", "<br>";

?>