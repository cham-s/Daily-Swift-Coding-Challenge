func challenge20(_ number: UInt8) -> UInt8 {
    guard number > 0 else { return number }
    
    let binary = String(number, radix: 2)
    let padding = 8 - binary.count
    let reversed = String(binary.reversed()) +
                        String(repeating: "0", count: padding)
    let result =  UInt8(reversed, radix: 2)!
    return result
}
