import Foundation

func challenge11(input: String) -> String {
    guard !input.isEmpty else { return "" }
    
    let components = input.components(separatedBy: " ")
    let first = components.first!
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in components {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        
        bestPrefix = currentPrefix
    }
    return bestPrefix
}
