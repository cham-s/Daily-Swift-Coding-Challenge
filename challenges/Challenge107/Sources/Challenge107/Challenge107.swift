import Foundation

public extension Character {
    private var alphabet : [Character] {
        return Array("abcdefghijklmnopqrstuvwxyz")
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
        return !isLowercase
    }
    
    public func ceasar(shiftKey: Character = "d") -> Character? {
        guard isAlpha else { return nil }
        let ceasrOffSet = alphabet.firstIndex(of: shiftKey)!
        let index = (alphabet.firstIndex(of: self)! + ceasrOffSet) % 26
        return alphabet[index]
    }
}

let char = "iamapandabear".map { $0.ceasar()! }


struct Cipher {
    public var key: String
    
    init?(key: String = "d") {
        guard !key.isEmpty else { return nil }
        guard key.first(where: { $0.isUppercase }) == nil else { return nil }
        guard key.first(where: { !$0.isAlpha }) == nil else { return nil }
        self.key = key
    }
    
    public func encode(_ input: String) -> String? {
        guard key.first(where: { !$0.isAlpha }) == nil else { return nil }
        guard input.count == key.count else { return nil }
        
        return String(zip(input, key).map { $0.0.ceasar(shiftKey: $0.1)! })
    }
    
    public func decode() {
        
    }
}

