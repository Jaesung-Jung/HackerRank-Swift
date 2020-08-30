/*:
 [Previous](algorithm)
 # Migratory Birds
 [https://www.hackerrank.com/challenges/migratory-birds/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func migratoryBirds(arr: [Int]) -> Int {
  let dictionary = arr
    .reduce(into: [:]) { dictionary, type in
      return dictionary[type] = (dictionary[type] ?? 0) + 1
    }
  let max = dictionary
    .max { $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value }
  return max?.key ?? 0
}

challenge(migratoryBirds)
  .testCase([1, 4, 4, 4, 5, 3])
  .testCase([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
