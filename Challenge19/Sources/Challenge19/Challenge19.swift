func challenge19(_ number: Int) -> (lowest: Int, highest: Int) {
    guard number > 0 else { return (0, 0) }
    func oneCount(num: Int) -> Int {
        let binary = String(num, radix: 2)
        return binary.filter { $0 == "1" }.count
    }
    
    let onesCount = oneCount(num: number)
    var highest = 0
    var lowest = 0
    
    for i in number+1..<Int.max {
        if oneCount(num: i) == onesCount {
            highest = i
            break
        }
    }
    
    var start = number - 1
    while start > 0 {
        if oneCount(num: start) == onesCount  {
            lowest = start
            break
        }
        start -= 1
    }
    return (lowest, highest)
}
