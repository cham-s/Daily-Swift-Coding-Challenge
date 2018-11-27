func challenge16(_ number: Int, power: Int) -> Int {
    if power == 0 { return 1 }
    return challenge16(number, power: power - 1) * number
}
