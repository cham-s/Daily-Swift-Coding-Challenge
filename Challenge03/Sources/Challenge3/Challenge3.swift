

public func challenge3(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    let setFirst = Set(first)
    let setSecond = Set(second)
    return setFirst.symmetricDifference(setSecond).count == 0
}
