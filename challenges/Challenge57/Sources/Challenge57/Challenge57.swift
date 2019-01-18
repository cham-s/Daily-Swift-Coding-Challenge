struct Bob {
    static func hey(_ input: String) -> String {
        switch input {
        case input.contains("?"):
            return "Sure."
        case input.contains("!"):
            return "Whoa, chill out!"
        case input.isEmpty:
            return "Fine. Be that way!"
        default:
            return "Whatever"
        }
    }
}

extension String
