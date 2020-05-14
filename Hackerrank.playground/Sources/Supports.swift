import Foundation

public struct Challenge<Input, Output> {
  let domain: String
  let subdomain: String
  let name: String
  let function: (Input) throws -> Output

  @discardableResult
  public func testCase(_ input: Input) -> Challenge<Input, Output> {
    do {
      print("💬 \(name) | \(domain)/\(subdomain)")
      print("⌨️ Input")
      print("   \(sanitize(input))")
      let output = try function(input)
      print("🖨 Output")
      print("   \(output)")
      print("----------------------------------")
    } catch {
      print(error)
    }
    return self
  }

  func sanitize<T>(_ value: T) -> String {
    let output = "\(value)"
    if output.match("^\\(\\[.*\\]\\)$") { // tuple in array
      return output
        .replacingOccurrences(of: "(", with: "")
        .replacingOccurrences(of: ")", with: "")
        .replacingOccurrences(of: "], ", with: "]\n   ")
    } else if output.match("^\\[\\[.+\\]\\]$") { // 2d array
      return output
        .replacingOccurrences(of: "[[", with: "[\n     [")
        .replacingOccurrences(of: "]]", with: "]\n   ]")
        .replacingOccurrences(of: "], ", with: "]\n     ")
    } else if output.match("^\\[.+\\]$") { // array
      return output
    } else {
      return output
        .replacingOccurrences(of: "(", with: "")
        .replacingOccurrences(of: ")", with: "")
        .replacingOccurrences(of: ", ", with: "\n   ")
    }
  }

}

public func challenge<Input, Output>(_ function: @escaping (Input) throws -> Output, file: String = #file) -> Challenge<Input, Output> {
  let fileComponents = file.dropFileExtension().split(separator: "@")
  return Challenge(
    domain: String(fileComponents[0])
      .snakeCased(),
    subdomain: String(fileComponents[1])
      .snakeCased(),
    name: String(fileComponents[2])
      .replacingOccurrences(of: "_", with: " ")
      .snakeCased(),
    function: function
  )
}

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
