import Foundation

func challenge6(input: String) -> String {
    var used = [Character: Character]()
    let result = input.filter {
        used.updateValue($0, forKey: $0) == nil
    }
    return String(result)
}
