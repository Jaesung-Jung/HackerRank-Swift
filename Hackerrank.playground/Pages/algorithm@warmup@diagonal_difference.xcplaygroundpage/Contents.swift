/*:
 [Previous](algorithm)
 # Diagonal Difference
 [https://www.hackerrank.com/challenges/diagonal-difference/problem](https://www.hackerrank.com/challenges/diagonal-difference/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func diagonalDifference(arr: [[Int]]) -> Int {
  let l = arr.enumerated()
    .map { $0.element[$0.offset] }
    .reduce(0, +)
  let r = arr
    .reversed()
    .enumerated()
    .map { $0.element[$0.offset] }
    .reduce(0, +)
  return abs(l - r)
}

challenge(diagonalDifference)
  .testCase([[1, 2, 3], [4, 5, 6], [9, 8, 9]])
  .testCase([[11, 2, 4], [4, 5, 6], [10, 8, -12]])
