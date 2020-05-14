/*:
 [Previous](algorithm)
 # Staircase
 [https://www.hackerrank.com/challenges/staircase/problem](https://www.hackerrank.com/challenges/staircase/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func staircase(n: Int) -> String {
  return stride(from: n - 1, through: 0, by: -1)
    .map { String(repeating: " ", count: $0) + String(repeating: "#", count: n - $0) }
    .joined(separator: "\n")
}

challenge(staircase)
  .testCase(5)
  .testCase(8)
