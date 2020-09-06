/*:
 [Previous](algorithm)
 # Forming a Magic Square
 [https://www.hackerrank.com/challenges/magic-square-forming/problem](https://www.hackerrank.com/challenges/magic-square-forming/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Medium
 */

func createOddMagicSquare(_ n: Int) -> [[Int]] {
  struct Position {
    let row: Int
    let column: Int
  }

  var magicSquare = (0..<n).map { _ in [Int](repeating: 0, count: n) }
  var position = Position(row: n - 1, column: n / 2)
  (1...n * n).forEach { value in
    guard value > 1 else {
      magicSquare[position.row][position.column] = value
      return
    }
    var nextPosition = Position(row: (position.row + 1) % n, column: (position.column + 1) % n)
    if magicSquare[nextPosition.row][nextPosition.column] != 0 {
      nextPosition = Position(row: (position.row - 1) % n, column: position.column)
    }
    magicSquare[nextPosition.row][nextPosition.column] = value
    position = nextPosition
  }
  return magicSquare
}

func formingMagicSquare(s: [[Int]]) -> Int {
  return 0
}

print(createOddMagicSquare(3))

//challenge(formingMagicSquare)
//  .testCase([
//    [4, 9, 2],
//    [3, 5, 7],
//    [8, 1, 5]
//  ])
//  .testCase([
//    [4, 8, 2],
//    [4, 5, 7],
//    [6, 1, 6]
//  ])
