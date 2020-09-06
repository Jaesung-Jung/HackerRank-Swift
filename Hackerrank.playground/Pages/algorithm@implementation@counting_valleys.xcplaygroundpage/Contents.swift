/*:
 [Previous](algorithm)
 # Counting Valleys
 [https://www.hackerrank.com/challenges/counting-valleys/problem](https://www.hackerrank.com/challenges/counting-valleys/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func countingValleys(n: Int, s: String) -> Int {
  return s.map { $0 == "U" ? 1 : -1 }
    .reduce((high: 0, count: 0)) { result, step in
      let isValley = result.high == -1 && step == 1
      return (result.high + step, isValley ? result.count + 1 : result.count)
    }
    .count
}

challenge(countingValleys)
  .testCase((n: 8, s: "DDUUUUDD"))
  .testCase((n: 8, s: "UDDDUDUU"))
  .testCase((n: 10, s: "UDUUUDUDDD"))
