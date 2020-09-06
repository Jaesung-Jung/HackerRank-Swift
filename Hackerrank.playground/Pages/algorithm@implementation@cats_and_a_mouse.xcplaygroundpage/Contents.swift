/*:
 [Previous](algorithm)
 # Cats and a Mouse
 [https://www.hackerrank.com/challenges/cats-and-a-mouse/problem](https://www.hackerrank.com/challenges/cats-and-a-mouse/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func catAndMouse(x: Int, y: Int, z: Int) -> String {
  let dx = abs(x - z)
  let dy = abs(y - z)
  if dx < dy {
    return "Cat A"
  } else if dx > dy {
    return "Cat B"
  } else {
    return "Mouse C"
  }
}

challenge(catAndMouse)
  .testCase((x: 1, y: 2, z: 3))
  .testCase((x: 1, y: 3, z: 2))
