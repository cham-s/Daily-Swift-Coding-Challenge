func challenge19(_ number: Int) -> (lowest: Int, highest: Int) {
    guard number > 0 else { return (0, 0) }
    func oneCount(num: Int) -> Int {
        let binary = String(num, radix: 2)
        return binary.filter { $0 == "1" }.count
    }
    
    let onesCount = oneCount(num: number)
    let highest = (number+1..<Int.max).first(where: { oneCount(num: $0) == onesCount })
    let lowest = (0..<number).reversed().first(where: { oneCount(num: $0) == onesCount })
    
    return (lowest!, highest!)
}


