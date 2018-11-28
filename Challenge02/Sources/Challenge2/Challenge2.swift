
public func challenge2(input: String) -> Bool {
    let lowercased = input.lowercased()
    return lowercased == String(lowercased.reversed())
}
