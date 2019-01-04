import Foundation

func challenge22(_ input: String) -> Int {
    return input.components(separatedBy: CharacterSet.decimalDigits.inverted)
           .compactMap { Int($0) }
           .reduce(0, +)
}
