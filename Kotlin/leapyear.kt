import java.time.Year

object LeapYear {

    private val years = listOf(1900, 2000, 2023, 2024, 2400)

    private fun isLeapWithLib(year: Int): Boolean {
        return Year.of(year).isLeap
    }

    private fun isLeapWithoutLib(year: Int): Boolean {
        return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    }

    @JvmStatic
    fun main(args: Array<String>) {
        for (year in years) {
            println("Is $year a leap year? ${isLeapWithLib(year)}")
            println("Is $year a leap year without lib? ${isLeapWithoutLib(year)}")
        }
    }
}
