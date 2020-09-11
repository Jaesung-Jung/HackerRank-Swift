/*:
 [Previous](algorithm)
 # Between Two Sets
 [https://www.hackerrank.com/challenges/between-two-sets/problem](https://www.hackerrank.com/challenges/between-two-sets/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func getTotalX(a: [Int], b: [Int]) -> Int {
  let l = a.reduce(1, lcm)
  let g = b.reduce(0, gcd)
  return stride(from: l, through: g, by: l)
    .filter { g % $0 == 0 }
    .count
}

func gcd(_ a: Int, _ b: Int) -> Int {
  let r = a % b
  return r == 0 ? b : gcd(b, r)
}

func lcm(_ a: Int, _ b: Int) -> Int {
  return a / gcd(a, b) * b
}

challenge(getTotalX)
  .testCase((a: [2, 4], b: [16, 32, 96]))
