import Foundation

func challenge10(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    return Set(Array(first)).subtracting(Set(Array(second))).count < 4
}
