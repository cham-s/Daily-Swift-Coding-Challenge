func challenge19(_ number: Int) -> (lowest: Int, highest: Int)? {
    guard number > 0 else { return nil }
    
    func numberOfOnes(_ n: Int) -> Int {
        return String(n, radix: 2).reduce(0) { $1 == "1" ? $0 + 1 : $0  }
    }
    
    let oneCount = numberOfOnes(number)
    print(oneCount)
    var lowest: Int!
    var highest: Int!
    for i in number+1...Int.max {
        if oneCount == numberOfOnes(i) {
            highest = i
            break
        }
    }
    
    for i in (0..<number).reversed() {
        if oneCount == numberOfOnes(i) {
            lowest = i
            break
        }
    }
    
    return (lowest, highest)
}
