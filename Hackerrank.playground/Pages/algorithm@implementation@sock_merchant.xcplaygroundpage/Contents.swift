/*:
 [Previous](algorithm)
 # Sock Merchant
 [https://www.hackerrank.com/challenges/sock-merchant/problem](https://www.hackerrank.com/challenges/sock-merchant/problem)
 ### Section
 Practice > Algorithm > Implementation
 ### Difficulty
 Easy
 */
func sockMerchant(n: Int, ar: [Int]) -> Int {
  return ar
    .reduce(into: [:]) {
      $0[$1] = ($0[$1] ?? 0) + 1
    }
    .map { $0.value / 2 }
    .reduce(0, +)
}

challenge(sockMerchant)
  .testCase((n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
  .testCase((n: 9, ar: [10, 20, 20, 10, 10, 30, 20, 10, 20]))
