import Foundation

func challenge3(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    let firstSet = Set(Array(first))
    return firstSet.symmetricDifference(Set(second)).count == 0
}
