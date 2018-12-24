import Foundation

func challenge1(input: String) -> Bool {
    let stringSet = Set(Array(input))
    return stringSet.count == input.count
}

