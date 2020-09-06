/*:
 [Previous](algorithm)
 # Bon Appétit
 [https://www.hackerrank.com/challenges/bon-appetit/problem](https://www.hackerrank.com/challenges/bon-appetit/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
  let totalCost = bill.enumerated().reduce(0) {
    return $1.offset == k ? $0 : $0 + $1.element
  }
  let cost = b - totalCost / 2
  return cost > 0 ? "\(cost)" : "Bon Appetit"
}

challenge(bonAppetit)
  .testCase((bill: [3, 10, 2, 9], k: 1, b: 12))
  .testCase((bill: [3, 10, 2, 9], k: 1, b: 7))
