/*:
 [Previous](data_structure)
 # 2D Array - DS
 [https://www.hackerrank.com/challenges/2d-array/problem](https://www.hackerrank.com/challenges/2d-array/problem)
 ### Section
 Practice > Data Structure > Arrays
 ### Difficulty
 Easy
 */
func hourglassSum(arr: [[Int]]) -> Int {
  let flatten = arr.flatMap { $0 }
  let pattern = [0, 1, 2, 7, 12, 13, 14]
  return stride(from: 0, to: 24, by: 1) // max row is 6 * 4
    .compactMap { offset -> Int? in
      guard (offset % 6) < 4 else { // check the column
        return nil
      }
      return pattern
        .map { flatten[offset + $0] }
        .reduce(0, +)
    }
    .max() ?? 0
}

challenge(hourglassSum)
  .testCase([
    [1, 1, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 1, 1, 0, 0, 0],
    [0, 0, 2, 4, 4, 0],
    [0, 0, 0, 2, 0, 0],
    [0, 0, 1, 2, 4, 0]
  ])
