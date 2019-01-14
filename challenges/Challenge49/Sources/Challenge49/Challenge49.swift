import Foundation

func balanced(_ input: String) -> Bool {
    guard !input.isEmpty else { return true }
    var invaliSet = CharacterSet.alphanumerics.inverted
    invaliSet.remove(charactersIn: "xy")
    guard input.rangeOfCharacter(from: invaliSet) == nil else { return false }
    let countedSet = NSCountedSet(array: Array(input))
    return countedSet.count(for: Character("x"))
        == countedSet.count(for: Character("y"))
}

func balanced_bonus(_ input: String) -> Bool {
    guard !input.isEmpty else { return true }
    let countedSet = NSCountedSet(array: Array(input))
    let counts = countedSet.map { countedSet.count(for: $0) }
    return counts.allSatisfy { $0 == counts[0] }
}
