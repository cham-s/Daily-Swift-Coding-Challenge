import Foundation

public func challenge10(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    let setFirst = Set(Array(first))
    let setSecond = Set(Array(second))
    
    return setFirst.subtracting(setSecond).count < 4
}
