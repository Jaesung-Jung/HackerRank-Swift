/*:
 [Previous](data_structure)
 # Dynamic Array
 [https://www.hackerrank.com/challenges/dynamic-array/problem](https://www.hackerrank.com/challenges/dynamic-array/problem)
 ### Section
 Practice > Data Structure > Arrays
 ### Difficulty
 Easy
 */
func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
  var seqList = Array<[Int]>(repeating: [], count: n)
  return queries
    .reduce(into: []) { answers, query in
      let type = query[0]
      let x = query[1]
      let y = query[2]
      let index = x ^ (answers.last ?? 0) % n
      switch type {
      case 1:
        seqList[index].append(y)
      case 2:
        answers.append(seqList[index][y % seqList[index].count])
      default:
        break
      }
    }
}

challenge(dynamicArray)
  .testCase((
    n: 2,
    queries: [
      [1, 0, 5],
      [1, 1, 7],
      [1, 0, 3],
      [2, 1, 0],
      [2, 1, 1]
    ]
  ))
