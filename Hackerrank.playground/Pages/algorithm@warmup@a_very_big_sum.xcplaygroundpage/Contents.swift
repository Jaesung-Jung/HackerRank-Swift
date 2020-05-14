/*:
 [Previous](algorithm)
 # A Very Big Sum
 [https://www.hackerrank.com/challenges/a-very-big-sum/problem](https://www.hackerrank.com/challenges/a-very-big-sum/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func aVeryBigSum(ar: [Int]) -> Int {
  return ar.reduce(0, +)
}

challenge(aVeryBigSum)
  .testCase([1000000001, 1000000002, 1000000003, 1000000004, 1000000005])
