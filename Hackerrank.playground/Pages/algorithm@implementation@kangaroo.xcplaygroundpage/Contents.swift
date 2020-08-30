/*:
 [Previous](algorithm)
 # Kangaroo
 [https://www.hackerrank.com/challenges/kangaroo/problem](https://www.hackerrank.com/challenges/kangaroo/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
  guard v1 > v2 else {
    return "NO"
  }
  return (x2 - x1) % (v1 - v2) == 0 ? "YES" : "NO"
}

challenge(kangaroo)
  .testCase((x1: 0, v1: 3, x2: 4, v2: 2))
  .testCase((x1: 0, v1: 2, x2: 5, v2: 3))
