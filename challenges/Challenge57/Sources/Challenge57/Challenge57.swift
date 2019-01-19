import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        let trimmedInput = input.trimmingCharacters(in: .whitespaces)
        guard trimmedInput.isEmpty == false else {
            return "Fine. Be that way!"
        }
        if input.isAllUppercased {
            if input.rangeOfCharacter(from: .letters) == nil {
                if input.last! == "?" {
                    return "Sure."
                }
                return "Whatever."
            }
            return "Whoa, chill out!"
        }
        if input.last! == "?" {
            return "Sure."
        }
        
        return "Whatever."
    }
}

extension String {
    var isAllUppercased: Bool {
        return self.uppercased() == self
    }
}
