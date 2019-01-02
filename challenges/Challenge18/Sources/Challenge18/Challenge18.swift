import Foundation

func challenge18(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    
    let greatestPossibleFactor = Int(sqrt(Double(number)))
    for i in 2...greatestPossibleFactor {
        if number % i == 0 {
            return false
        }
    }
    return true
}
