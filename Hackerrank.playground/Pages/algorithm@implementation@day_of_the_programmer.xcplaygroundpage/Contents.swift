/*:
 [Previous](algorithm)
 # Day of the Programmer
 [https://www.hackerrank.com/challenges/day-of-the-programmer/problem](https://www.hackerrank.com/challenges/day-of-the-programmer/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func dayOfProgrammer(year: Int) -> String {
  let useGregorian = year > 1918
  let isLeapYear = useGregorian
    ? year % 4 == 0 && ((year % 100 != 0) || (year % 400 == 0))
    : year % 4 == 0
  switch year {
  case 1918:
    return "26.09.\(year)"
  case _ where isLeapYear:
    return "12.09.\(year)"
  default:
    return "13.09.\(year)"
  }
}

challenge(dayOfProgrammer)
  .testCase(2017)
  .testCase(2016)
  .testCase(1800)
  .testCase(1918)
