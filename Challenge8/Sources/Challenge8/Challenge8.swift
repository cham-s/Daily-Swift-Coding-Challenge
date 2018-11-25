import Foundation

func challenge8(input: String) -> Bool {
    let lowercased = input.lowercased()
    let alphaCharset = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
    let alphaOnly = lowercased.filter { String($0).rangeOfCharacter(from: alphaCharset) != nil }
    let alphaSet = Set(Array(alphaOnly))

    return alphaSet.count == 26
}
