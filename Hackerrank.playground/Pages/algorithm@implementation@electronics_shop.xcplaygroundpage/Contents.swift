/*:
 [Previous](algorithm)
 # Electronics Shop
 [https://www.hackerrank.com/challenges/electronics-shop/problem](https://www.hackerrank.com/challenges/electronics-shop/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
  return keyboards
    .flatMap { keyboard in drives.map { $0 + keyboard } }
    .filter { $0 <= b }
    .max() ?? -1
}

challenge(getMoneySpent)
  .testCase((keyboards: [3, 1], drives: [5, 2, 8], b: 10))
  .testCase((keyboards: [4], drives: [5], b: 5))
