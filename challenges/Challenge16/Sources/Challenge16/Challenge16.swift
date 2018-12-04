func challenge16(_ number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    if power == 1 { return number }
    return challenge16(number, power: power - 1) * number
}
