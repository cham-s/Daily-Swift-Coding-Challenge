import Foundation

func challenge7(input: String) -> String {
    guard !input.isEmpty else {
        return ""
    }
    
    let components = input.components(separatedBy: .whitespaces)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}
