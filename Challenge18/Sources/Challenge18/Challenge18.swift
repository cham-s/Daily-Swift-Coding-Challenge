import Foundation

func challenge18(_ number: Int) -> Bool {
    guard number >= 2 else { return false }
    let sqroot = Int(sqrt(Double(number)))
    print(sqroot)
    for i in 2...sqroot {
        if  number % i == 0 {
            return false
        }
    }
    return true
}
