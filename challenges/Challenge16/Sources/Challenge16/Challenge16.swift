import Foundation

func challenge16(_ number: Int, power: Int) -> Int {
    guard power > 0,
          number > 0 else { return 0 }
    if power == 1 { return number }
    return number * challenge16(number , power: power - 1)
}
