struct SecretHandshake {
    let secrets: [UInt16: String] = [
        0x1: "wink",
        0x10: "double blink",
        0x100: "close your eyes",
        0x1000: "jump"
    ]
    
    var result: [String] = []
    
    init(_ input: UInt16) {
       
    }
}
