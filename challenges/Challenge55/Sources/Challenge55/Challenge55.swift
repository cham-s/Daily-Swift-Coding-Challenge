struct SumOfMultiples {
    static func toLimit(_ number: Int, inMultiples: [Int]) -> Int {
        guard number > 0 else { return 0 }
        
        let multiples = Set(inMultiples)
        
        return (1..<number).filter {
            for i in multiples {
                guard i != 0 else { continue }
                if $0 % i == 0 { return true }
            }
            
            return false
        }.reduce(0, +)
    }
}
