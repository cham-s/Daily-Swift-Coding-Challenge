import Foundation

public func challenge7(input: String) -> String {
    let seperated = input.components(separatedBy: " ")
    let filtered = seperated.filter { !$0.isEmpty }
    return filtered.joined(separator: " ")
}
