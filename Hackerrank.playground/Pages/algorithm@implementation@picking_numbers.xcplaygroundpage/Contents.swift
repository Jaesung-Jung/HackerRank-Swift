/*:
 [Previous](algorithm)
 # Picking Numbers
 [https://www.hackerrank.com/challenges/picking-numbers/problem](https://www.hackerrank.com/challenges/picking-numbers/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
import Foundation

func pickingNumbers(a: [Int]) -> Int {
  let counts = a.reduce(into: Array(repeating: 0, count: 100)) { $0[$1] += 1 }
  return zip(counts.dropLast(), counts.dropFirst())
    .map { $0 + $1 }
    .max() ?? 0
}

challenge(pickingNumbers)
  .testCase([1, 2, 2, 3, 1, 2])
  .testCase([4, 6, 5, 3, 3, 1])
