/*:
 [Previous](algorithm)
 # Breaking the Records
 [https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem](https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func breakingRecords(scores: [Int]) -> [Int] {
  let scoreCount: (Int, (Int, Int) -> Bool) -> Int = { initialValue, compare in
    let result = scores.reduce((currentScore: initialValue, count: 0)) { result, score in
      return compare(result.currentScore, score) ? (score, result.count + 1) : result
    }
    return result.count
  }
  return [
    scoreCount(scores.first ?? 0, <),
    scoreCount(scores.first ?? 0, >)
  ]
}

challenge(breakingRecords)
  .testCase([10, 5, 20, 20, 4, 5, 2, 25, 1])
  .testCase([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])
