import Foundation

extension String {
  func snakeCased() -> String {
    return String(self).split(separator: " ")
      .map { substring -> String in
        guard let first = substring.first, first.isLowercase else {
          return String(substring)
        }
        return first.uppercased() + substring.dropFirst()
      }
      .joined(separator: " ")
  }

  func dropFileExtension() -> String {
    guard let index = self.lastIndex(of: ".") else {
      return self
    }
    return String(self[..<index])
  }

  func match(_ pattern: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: pattern, options: [])
    return !regex
      .matches(in: self, options: [], range: NSRange(location: 0, length: count))
      .isEmpty
  }
}
