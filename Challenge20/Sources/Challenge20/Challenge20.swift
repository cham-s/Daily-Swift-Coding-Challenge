func challenge20(_ number: UInt8) -> UInt8 {
    let binary = String(number, radix: 2)
    let zeroCount = 8 - binary.count
    let padded = String(repeating: "0", count: zeroCount) + binary
    let reversed = String(padded.reversed())
    print(reversed)
    
    return UInt8(reversed, radix: 2)!
}
