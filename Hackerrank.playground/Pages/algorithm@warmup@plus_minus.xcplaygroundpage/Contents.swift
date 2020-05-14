/*:
 [Previous](algorithm)
 # Plus Minus
 [https://www.hackerrank.com/challenges/plus-minus/problem](https://www.hackerrank.com/challenges/plus-minus/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func plusMinus(arr: [Int]) -> String {
  return arr.reduce(into: [0, 0, 0]) {
      if $1 > 0 {
        $0[0] = $0[0] + 1
      } else if $1 < 0 {
        $0[1] = $0[1] + 1
      } else {
        $0[2] = $0[2] + 1
      }
    }
    .map { String(Double($0) / Double(arr.count)) }
    .joined(separator: "\n   ")
}

challenge(plusMinus)
  .testCase([-4, 3, -9, 0, 4, 1])
  .testCase([1, 2, 3, -1, -2, -3, 0, 0])
