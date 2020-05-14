/*:
 [Previous](algorithm)
 # Mini-Max Sum
 [https://www.hackerrank.com/challenges/mini-max-sum/problem](https://www.hackerrank.com/challenges/mini-max-sum/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func miniMaxSum(arr: [Int]) -> String {
  let cases = stride(from: 0, to: arr.count, by: 1)
    .map { exclude in
      arr.enumerated()
        .filter { $0.offset != exclude }
        .map { $0.element }
        .reduce(0, +)
    }
  return "\(cases.min() ?? 0) \(cases.max() ?? 0)"
}

challenge(miniMaxSum)
  .testCase([1, 2, 3, 4, 5])
  .testCase([7, 69, 2, 221, 8974])
