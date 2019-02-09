import Foundation

struct IsbnVerifier {
    
    static func isValid(_ input: String) -> Bool {
        
        let striped = input.filter { $0 != "-" }
        guard striped.count == 10 else { return false }
        
        let invalidSet = CharacterSet(charactersIn: "0123456789X").inverted
        guard striped.rangeOfCharacter(from: invalidSet) == nil else { return false }
        
        if let xIndex = striped.lastIndex(of: "X") {
            guard xIndex == striped.index(before: striped.endIndex) else {
                return false
            }
        }
        
        let numbers: [Int] = striped.map { Int(String($0)) ?? 10 }
        var result = 0
        for (index, value) in (1...10).reversed().enumerated() {
            result += numbers[index] * value
        }
        
        return result % 11 == 0
    }
}
