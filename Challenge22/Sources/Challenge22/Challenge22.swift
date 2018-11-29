import Foundation

func challenge22(_ input: String) -> Int {
    let components = input.components(separatedBy: CharacterSet.decimalDigits.inverted)
    return components.compactMap{ Int($0) }.reduce(0, +)
}
