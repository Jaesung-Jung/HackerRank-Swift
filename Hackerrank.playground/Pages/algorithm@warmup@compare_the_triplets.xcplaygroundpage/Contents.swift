/*:
 [Previous](algorithm)
 # Compare the Triplets
 [https://www.hackerrank.com/challenges/solve-me-first/problem](https://www.hackerrank.com/challenges/compare-the-triplets/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
  return zip(a, b)
    .compactMap { $0.0 > $0.1 ? 0 : $0.0 < $0.1 ? 1 : nil }
    .reduce(into: [0, 0]) { $0[$1] = $0[$1] + 1 }
}

challenge(compareTriplets)
  .testCase((a: [17, 28, 30], b: [99, 16, 8]))
  .testCase((a: [50, 20, 30], b: [60, 20, 10]))
