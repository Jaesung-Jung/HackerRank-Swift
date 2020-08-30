/*:
 [Previous](algorithm)
 # Birthday Chocolate
 [https://www.hackerrank.com/challenges/the-birthday-bar/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func birthday(s: [Int], d: Int, m: Int) -> Int {
  return stride(from: s.startIndex, through: s.endIndex - m, by: 1)
    .map { s[$0..<$0 + m].reduce(0, +) }
    .filter { $0 == d }
    .count
}

challenge(birthday)
  .testCase((s: [1, 2, 1, 3, 2], d: 3, m: 2))
  .testCase((s: [1, 1, 1, 1, 1, 1], d: 3, m: 2))
  .testCase((s: [4], d: 4, m: 1))
