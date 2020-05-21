import Foundation

public protocol Argument {
  func describe() -> String
  func describe(prefix: () -> String, suffix: (String)-> String) -> String
}

extension Argument {
  public func describe() -> String { return describe(prefix: { "" }, suffix: { _ in "" }) }
  public func describe(prefix: () -> String, suffix: (String) -> String) -> String { "\(self)" }
}

public protocol ArgumentArray: Argument {
}

extension Int: Argument {
}

extension Double: Argument {
}

extension String: Argument {
}

extension Array: ArgumentArray {
  public func describe() -> String {
    return describe(prefix: { "" }, suffix: { $0.last == "]" ? "\n" : "" })
  }

  public func describe(prefix: () -> String, suffix: (String) -> String) -> String {
    let s: String = reduce(into: []) { result, item in
        if let array = item as? ArgumentArray {
          let output = array.describe(
            prefix: { prefix() + "  " },
            suffix: { $0.last == "]" ? "\n  " : "" }
          )
          result.append("\n\(prefix())  \(output)")
        } else if let arg = item as? Argument {
          result.append(arg.describe())
        }
      }
      .joined(separator: ", ")
    return "[\(s)\(suffix(s))]"
  }
}
