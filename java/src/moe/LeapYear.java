package moe;

import java.time.Year;
import java.util.List;

public class LeapYear {

  private static List<Integer> years = List.of(1900, 2000, 2023, 2024, 2400);

  private static boolean isLeapYear(int year, boolean useLib) {
    return useLib ? Year.of(year).isLeap() : (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }

  public static void main(String[] args) {
    for (int year : years) {
      System.out.println("is " + year + " a leap year? " + isLeapYear(year, true));
      System.out.println("is " + year + " a leap year without lib? " + isLeapYear(year, false));
    }
  }

}
