import Foundation

func challenge16(_ number: Int, power: Int) -> Int {
    guard power > 1 else { return number }
    return number * challenge16(number , power: power - 1)
}
