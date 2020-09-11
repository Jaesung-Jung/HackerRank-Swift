/*:
 [Previous](data_structure)
 # Array Manipulation
 [https://www.hackerrank.com/challenges/crush/problem](https://www.hackerrank.com/challenges/crush/problem)
 ### Section
 Practice > Data Structure > Arrays
 ### Difficulty
 Hard
 */
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
  var array = ContiguousArray(repeating: 0, count: n + 1)
  queries.forEach { query in
    let startIndex = query[0] - 1
    let endIndex = query[1]
    let value = query[2]
    array[startIndex] = array[startIndex] + value
    array[endIndex] = array[endIndex] - value
  }

  var maxValue = 0
  var sum = 0
  array.forEach {
    sum = sum + $0
    maxValue = max(maxValue, sum)
  }
  return maxValue
}

challenge(arrayManipulation)
  .testCase((
    n: 10,
    queries: [
      [1, 5, 3],
      [4, 8, 7],
      [6, 9, 1]
    ]))
  .testCase((
    n: 5,
    queries: [
      [1, 2, 100],
      [2, 5, 100],
      [3, 4, 100]
    ]))
