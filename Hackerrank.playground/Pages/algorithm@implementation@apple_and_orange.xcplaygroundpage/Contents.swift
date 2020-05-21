/*:
 [Previous](algorithm)
 # Apple and Orange
 [https://www.hackerrank.com/challenges/apple-and-orange/problem](https://www.hackerrank.com/challenges/apple-and-orange/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
  let containingCount: ([Int], Int) -> Int = { fruitPositions, treePosition in
    return fruitPositions.map { treePosition + $0 }.filter { (s...t).contains($0) }.count
  }
  return [
    containingCount(apples, a),
    containingCount(oranges, b)
  ]
}

challenge(countApplesAndOranges)
  .testCase((s: 7, t: 10, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6]))
