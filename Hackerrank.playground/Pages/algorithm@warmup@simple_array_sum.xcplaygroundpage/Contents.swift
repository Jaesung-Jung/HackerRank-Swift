/*:
 [Previous](algorithm)
 # Simple Array Sum
 [https://www.hackerrank.com/challenges/solve-me-first/problem](https://www.hackerrank.com/challenges/simple-array-sum/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func simpleArraySum(ar: [Int]) -> Int {
  return ar.reduce(0, +)
}

challenge(simpleArraySum)
  .testCase([1, 2, 3, 4, 10, 11])
  .testCase([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
