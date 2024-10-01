using System;
using System.Collections.Generic;

class Program
{
    static bool IsLeapYear(int year)
    {
        if (year % 4 != 0)
        {
            return false;
        }
        return (year % 100 != 0 || year % 400 == 0);
    }

    static bool Test()
    {
        List<int> leapYears = new List<int> {
            1804, 1820, 1844, 1852, 1940,
            1984, 2000, 2008, 2020, 2024, 2252
        };

        for (int i = 0; i < leapYears.Count; i++)
        {
            if (!IsLeapYear(leapYears[i]))
            {
                Console.WriteLine($"Wrong answer for: {leapYears[i]}");
                return false;
            }
            int defNotLeapYear = leapYears[i] + 1;
            if (IsLeapYear(defNotLeapYear))
            {
                Console.WriteLine($"Wrong answer for: {defNotLeapYear}");
                return false;
            }
        }
        return true;
    }

    static void Main(string[] args)
    {
        if (!Test())
        {
            Environment.Exit(1);
        }

        List<int> yearsFromExample = new List<int> { 1900, 2000, 2023, 2024 };
        for (int i = 0; i < yearsFromExample.Count; i++)
        {
            string ans = (IsLeapYear(yearsFromExample[i])) ? "Yes!" : "No.";
            Console.WriteLine($"Is {yearsFromExample[i]} a leap year? {ans}");
        }
    }
}
