import Foundation

func challenge5(input: String, count: Character) -> Int {
    let countedSet = NSCountedSet(array: Array(input))
    return countedSet.count(for: count)
}
