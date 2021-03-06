func isLeap(_ year: Int) -> Bool {
    guard year % 4 == 0 else { return false }
    guard year % 100 != 0 else { return year % 400 == 0 }
    return true
}
