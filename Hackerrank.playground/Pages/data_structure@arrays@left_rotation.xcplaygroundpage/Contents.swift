/*:
 [Previous](data_structure)
 # Left Rotation
 [https://www.hackerrank.com/challenges/array-left-rotation/problem](https://www.hackerrank.com/challenges/array-left-rotation/problem)
 ### Section
 Practice > Data Structure > Arrays
 ### Difficulty
 Easy
 */
func rotateLeft(d: Int, arr: [Int]) -> [Int] {
  return (0..<arr.count).map { arr[($0 + d) % arr.count] }
}

challenge(rotateLeft)
  .testCase((d: 1, arr: [1, 2, 3, 4, 5]))
  .testCase((d: 2, arr: [1, 2, 3, 4, 5]))
  .testCase((d: 4, arr: [1, 2, 3, 4, 5]))
  .testCase((d: 4, arr: [1, 2, 3, 4, 5]))
