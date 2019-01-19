import Foundation

struct Bob {
    static func hey(_ input: String) -> String {        
        switch input {
        case let string where string.hasNoLetter:
            return "Fine. Be that way!"
            case let string where string.isAllUppercased && string.hasLetter:
            return "Whoa, chill out!"
        case let string where string.isInterrogative:
            return "Sure."
        default:
            return "Whatever."
        }
    }
}

extension String {
    var isAllUppercased: Bool {
        return self.uppercased() == self
    }
    
    var isInterrogative: Bool {
        return self.hasSuffix("?")
    }
    
    var hasLetter: Bool {
        return (self.rangeOfCharacter(from: .letters)) != nil
    }
    
    var hasNoLetter: Bool {
        return isEmpty || self.trimmingCharacters(in: .whitespaces).isEmpty
    }
}
