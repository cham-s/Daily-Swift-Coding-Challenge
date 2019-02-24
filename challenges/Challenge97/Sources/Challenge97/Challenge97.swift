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
        return isValidTriplet(values[0], values[1], values[2])
    }
    
    private func isValidTriplet(_ a: Int, _ b: Int, _ c: Int) -> Bool {
        if sqrt(Double(a)) * sqrt(Double(b)) == sqrt(Double(c)) {
            return true
        }
        if sqrt(Double(c)) * sqrt(Double(a)) == sqrt(Double(b)) {
            return true
        }
        
        if sqrt(Double(b)) * sqrt(Double(c)) == sqrt(Double(a)) {
            return true
        }
        return false
    }
    
    init(_ f: Int, _ s: Int, _ t: Int) {
        values.append(contentsOf: [f, s, t])
    }
    
    public func fromWhere(_ minFactor: Int = 0, maxFactor: Int) -> [Int] {
        
    }

}
