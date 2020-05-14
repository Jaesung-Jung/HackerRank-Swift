/*:
 [Previous](algorithm)
 # Birthday Cake Candles
 [https://www.hackerrank.com/challenges/birthday-cake-candles/problem](https://www.hackerrank.com/challenges/birthday-cake-candles/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func birthdayCakeCandles(ar: [Int]) -> Int {
  return ar
    .reduce((value: 0, count: 0)) {
      let m = max($0.0, $1)
      let c = $0.0 == $1 ? $0.1 + 1 : $0.0 > $1 ? $0.1 : 1
      return (value: m, count: c)
    }
    .count
}

challenge(birthdayCakeCandles)
  .testCase([3, 2, 1, 3])
