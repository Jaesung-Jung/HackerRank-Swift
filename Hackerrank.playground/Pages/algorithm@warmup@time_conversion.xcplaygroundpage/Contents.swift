/*:
 [Previous](algorithm)
 # Time Conversion
 [https://www.hackerrank.com/challenges/time-conversion/problem](https://www.hackerrank.com/challenges/time-conversion/problem)
 ### Section
 Practice > Algorithm > Warmup
 ### Difficulty
 Easy
 */
import Foundation.NSRange
import Foundation.NSRegularExpression

extension String {
  subscript(range: NSRange) -> Substring {
    let begin = index(startIndex, offsetBy: range.location)
    let end = index(begin, offsetBy: range.length)
    return self[begin..<end]
  }
}

func timeConversion(s: String) -> String {
  guard let regex = try? NSRegularExpression(pattern: #"(?<hour>\d+):(?<minute>\d+):(?<second>\d+)(?<meridiem>AM|PM)"#, options: []),
    let match = regex.firstMatch(in: s, options: [], range: NSRange(location: 0, length: s.count)) else {
    return ""
  }
  let hour = Int(s[match.range(withName: "hour")]) ?? 0
  let minute = s[match.range(withName: "minute")]
  let second = s[match.range(withName: "second")]
  let meridiem = s[match.range(withName: "meridiem")]
  let hour24 = String(meridiem == "PM" ? (hour % 12) + 12 : hour % 12)

  return "\(String(repeating: "0", count: 2 - hour24.count) + hour24):\(minute):\(second)"
}

challenge(timeConversion)
  .testCase("07:05:45PM")
