/*:
 [Previous](algorithm)
 # Drawing Book
 [https://www.hackerrank.com/challenges/drawing-book/problem](https://www.hackerrank.com/challenges/drawing-book/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func pageCount(n: Int, p: Int) -> Int {
  return min(p / 2, ((n.isMultiple(of: 2) ? n + 1 : n) - p) / 2)
}

challenge(pageCount)
  .testCase((n: 6, p: 5))
  .testCase((n: 5, p: 4))
  .testCase((n: 10, p: 1))
  .testCase((n: 10, p: 2))
  .testCase((n: 11, p: 9))
  .testCase((n: 11, p: 10))
