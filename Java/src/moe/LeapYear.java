package moe;

import java.time.Year;
import java.util.List;

public class LeapYear {

  private static List<Integer> years = List.of(1900, 2000, 2023, 2024, 2400);

  private static boolean isLeapWithLib(int year) {
    return Year.of(year).isLeap();
  }

  private static boolean isLeapWithoutLib(int year) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }

  public static void main(String[] args) {
    for (int year : years) {
      System.out.println("is " + year + " a leap year? " + isLeapWithLib(year));
      System.out.println("is " + year + " a leap year without lib? " + isLeapWithoutLib(year));
    }
  }

}
