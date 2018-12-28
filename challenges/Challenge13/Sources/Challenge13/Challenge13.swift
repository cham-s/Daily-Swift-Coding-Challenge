import Foundation

func challenge13(input: String) -> String {
    guard !input.isEmpty else { return "" }
    
    return input.components(separatedBy: " ")
        .filter { !$0.isEmpty }
        .map { String($0.reversed()) }
        .joined(separator: " ")
}
