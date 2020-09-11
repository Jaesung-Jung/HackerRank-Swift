/*:
 [Previous](data_structure)
 # Sparse Arrays
 [https://www.hackerrank.com/challenges/sparse-arrays/problem](https://www.hackerrank.com/challenges/sparse-arrays/problem)
 ### Section
 Practice > Data Structure > Arrays
 ### Difficulty
 Medium
 */
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
  let dictionary = strings.reduce(into: [:]) {
    $0[$1] = ($0[$1] ?? 0) + 1
  }
  return queries.map { dictionary[$0] ?? 0 }
}

challenge(matchingStrings)
  .testCase((
    strings: ["aba", "baba", "aba", "xzxb"],
    queries: ["aba", "xzxb", "ab"]
  ))
  .testCase((
    strings: ["abcde", "sdaklfj", "asdjf", "na", "basdn", "sdaklfj", "asdjf", "na", "asdjf", "na", "basdn", "sdaklfj", "asdjf"],
    queries: ["abcde", "sdaklfj", "asdjf", "na", "basdn"]
  ))
