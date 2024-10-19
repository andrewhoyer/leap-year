use strict;
use warnings;

sub is_leap_year {
    my ($year) = @_;
    return ($year % 4 == 0 && $year % 100 != 0) || ($year % 400 == 0);
}

my @years = (1900, 2000, 2023, 2024);
my ($sec, $min, $hour, $mday, $mon, $year) = localtime();
$year += 1900;

print "Is this year ($year) a leap year? ", is_leap_year($year) ? "True" : "False", "\n";

foreach my $year_to_check (@years) {
    print "Is $year_to_check a leap year? ", is_leap_year($year_to_check) ? "True" : "False", "\n";
}
