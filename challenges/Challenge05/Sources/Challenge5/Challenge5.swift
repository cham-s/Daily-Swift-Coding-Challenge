import Foundation

func challenge5(input: String, count: Character) -> Int {
    return NSCountedSet(array: Array(input)).count(for: count)
}
