import Foundation

struct Triplet {
    var values: [Int] = []
    var sum: Int {
        return values.reduce(0, +)
    }
    
    var product: Int {
        return values.reduce(1, *)
    }
    
    var isPythagorean: Bool {
        return Triplet.isValidTriplet(values) != nil
    }
    
    static private func isValidTriplet(_ input: [Int]) -> Int? {
        guard input.count == 3 else { return nil }
        for i in 0..<input.count {
            let (a, b, c) = (input[i], input[(i + 1) % 3], input[(i + 2) % 3])
            let result = pow(Double(a), 2) + pow(Double(b), 2)
            if result == pow(Double(c), 2) {
                return input.reduce(1, *)
            }
        }
        return nil
    }
    
    init(_ f: Int, _ s: Int, _ t: Int) {
        values.append(contentsOf: [f, s, t])
    }
    
    static public func fromWhere(_ minFactor: Int = 0, maxFactor: Int) -> [Int] {
        let range = Array(minFactor...maxFactor)
        guard range.count >= 3 else { return [] }
        var array: [Int] = []
        let limit = range.count - 3
        
        for offSet in stride(from: 0, through: limit, by: 1) {
            if let result = isValidTriplet(Array(range[offSet..<offSet + 3])) {
                array.append(result)
            }
        }
        return array
    }
}
