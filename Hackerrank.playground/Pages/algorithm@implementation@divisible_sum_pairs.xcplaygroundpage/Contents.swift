/*:
 [Previous](algorithm)
 # Divisible Sum Pairs
 [https://www.hackerrank.com/challenges/divisible-sum-pairs/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
  let numberOfDivisibleSumPairs: (Int, ArraySlice<Int>) -> Int = { value, elements in
    return elements
      .filter { (value + $0).isMultiple(of: k) }
      .count
  }
  return ar.enumerated()
    .map { numberOfDivisibleSumPairs($0.element, ar[ar.index(after: $0.offset)...] ) }
    .reduce(0, +)
}

challenge(divisibleSumPairs)
  .testCase((n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2]))
