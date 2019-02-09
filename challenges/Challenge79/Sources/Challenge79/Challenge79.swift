import Foundation

struct IsbnVerifier {
    
    static func isValid(_ input: String) -> Bool {
        
        let validSet = CharacterSet(charactersIn: "0123456789X")
        guard input.rangeOfCharacter(from: validSet) != nil else { return false }
        
        let striped = input.components(separatedBy: "-").joined()
        guard striped.count == 10 else { return false }
        
        let numbers: [Int] = striped.map { Int(String($0)) ?? 10 }
        var result = 0
        for (index, value) in (1...10).reversed().enumerated() {
            result += numbers[index] * value
        }
        return result % 11 == 0
    }
}

