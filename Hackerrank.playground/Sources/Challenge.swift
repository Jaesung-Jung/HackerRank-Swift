import Foundation

public struct Challenge<Input, Output> {
  let domain: String
  let subdomain: String
  let name: String
  let printInput: (Input) -> String
  let function: (Input) throws -> Output

  @discardableResult
  public func testCase(_ input: Input) -> Challenge<Input, Output> {
    do {
      print("💬 \(name) | \(domain)/\(subdomain)")
      print("⌨️ Input")
      print("   \(printInput(input).replacingOccurrences(of: "\n", with: "\n   "))")
      print("🖨 Output")
      print("   \("\(try function(input))".replacingOccurrences(of: "\n", with: "\n   "))")
      print("----------------------------------")
    } catch {
      print(error)
    }
    return self
  }
}

public func challenge<Output, A>(
  _ function: @escaping (A) throws -> Output,
  file: String = #file) -> Challenge<A, Output>
where
  A: Argument
{
  return _challenge(
    function,
    printInput: { $0.describe() },
    file: file
  )
}

public func challenge<Output, A0, A1>(
  _ function: @escaping ((A0, A1)) throws -> Output,
  file: String = #file) -> Challenge<(A0, A1), Output>
where
  A0: Argument,
  A1: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2>(
  _ function: @escaping ((A0, A1, A2)) throws -> Output,
  file: String = #file) -> Challenge<(A0, A1, A2), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3>(
  _ function: @escaping ((A0, A1, A2, A3)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3, A4>(
  _ function: @escaping ((A0, A1, A2, A3, A4)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3, A4), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument,
  A4: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe(),
        $0.4.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3, A4, A5>(
  _ function: @escaping ((A0, A1, A2, A3, A4, A5)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3, A4, A5), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument,
  A4: Argument,
  A5: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe(),
        $0.4.describe(),
        $0.5.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3, A4, A5, A6>(
  _ function: @escaping ((A0, A1, A2, A3, A4, A5, A6)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3, A4, A5, A6), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument,
  A4: Argument,
  A5: Argument,
  A6: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe(),
        $0.4.describe(),
        $0.5.describe(),
        $0.6.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3, A4, A5, A6, A7>(
  _ function: @escaping ((A0, A1, A2, A3, A4, A5, A6, A7)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3, A4, A5, A6, A7), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument,
  A4: Argument,
  A5: Argument,
  A6: Argument,
  A7: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe(),
        $0.4.describe(),
        $0.5.describe(),
        $0.6.describe(),
        $0.7.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3, A4, A5, A6, A7, A8>(
  _ function: @escaping ((A0, A1, A2, A3, A4, A5, A6, A7, A8)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3, A4, A5, A6, A7, A8), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument,
  A4: Argument,
  A5: Argument,
  A6: Argument,
  A7: Argument,
  A8: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe(),
        $0.4.describe(),
        $0.5.describe(),
        $0.6.describe(),
        $0.7.describe(),
        $0.8.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

public func challenge<Output, A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(
  _ function: @escaping ((A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)) throws -> Output,
  file: String = #file)
  -> Challenge<(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9), Output>
where
  A0: Argument,
  A1: Argument,
  A2: Argument,
  A3: Argument,
  A4: Argument,
  A5: Argument,
  A6: Argument,
  A7: Argument,
  A8: Argument,
  A9: Argument
{
  return _challenge(
    function,
    printInput: {
      [
        $0.0.describe(),
        $0.1.describe(),
        $0.2.describe(),
        $0.3.describe(),
        $0.4.describe(),
        $0.5.describe(),
        $0.6.describe(),
        $0.7.describe(),
        $0.8.describe(),
        $0.9.describe()
      ]
      .joined(separator: "\n")
    },
    file: file
  )
}

func _challenge<Input, Output>(
  _ function: @escaping (Input) throws -> Output,
  printInput: @escaping (Input) -> String,
  file: String
) -> Challenge<Input, Output> {
  let fileComponents = file.dropFileExtension().split(separator: "@")
  return Challenge(
    domain: String(fileComponents[0])
      .snakeCased(),
    subdomain: String(fileComponents[1])
      .snakeCased(),
    name: String(fileComponents[2])
      .replacingOccurrences(of: "_", with: " ")
      .snakeCased(),
    printInput: printInput,
    function: function
  )
}
