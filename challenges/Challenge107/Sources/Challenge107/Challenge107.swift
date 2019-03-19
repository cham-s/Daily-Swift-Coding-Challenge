import Foundation

public extension Character {
    public var alphabet : [Character] {
        return Array("abcdefghijklmnopqrstuwxyz")
    }
    public var isAlpha: Bool {
        return alphabet.contains(self) ||
            String(alphabet).uppercased().contains(self)
    }
    public var isLowercase: Bool {
        guard self.isAlpha else { return false }
        return alphabet.contains(self)
    }
    public var isUppercase: Bool {
        return isLowercase
    }
    
    public func ceasar(shiftKey: Character = "d") -> Character? {
        guard isAlpha else { return nil }
        let ceasrOffSet = alphabet.firstIndex(of: shiftKey)!
        let index = (alphabet.firstIndex(of: self)! + ceasrOffSet) % 26
        return alphabet[index]
    }
}

struct Cipher {
    public var key: String
    
    init(key: String = "") {
        self.key = key
    }
    
    public func encode(_ input: String) -> String? {
        guard key.first(where: { !$0.isAlpha }) == nil else { return nil }
        return ""
    }
}

