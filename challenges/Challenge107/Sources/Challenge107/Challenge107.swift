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
    
    public func ceasar(shiftKey: Character = "d",
                       decode: Bool = false) -> Character? {
        guard isAlpha else { return nil }
        let ceasrOffSet = alphabet.firstIndex(of: shiftKey)!
        var index = 0
        if decode {
            index = abs((alphabet.firstIndex(of: self)! - ceasrOffSet))
        } else {
            index = (alphabet.firstIndex(of: self)! + ceasrOffSet) % 26
        }
        return alphabet[index]
    }
}

struct Cipher {
    public var key: String?
    
    
    init?(key: String? = nil) {
        guard let key = key else { return }
        guard !key.isEmpty else { return nil }
        guard key.first(where: { $0.isUppercase }) == nil else { return nil }
        guard key.first(where: { !$0.isAlpha }) == nil else { return nil }
        self.key = key
    }
    
    public func encode(_ input: String) -> String? {
        guard let key = key else { return String(input.map { $0.ceasar()! }) }
        guard input.count == key.count else { return nil }
        return String(zip(input, key).map { $0.0.ceasar(shiftKey: $0.1)! })
    }
    
    public func decode(_ input: String) -> String? {
        guard let key = key else { return String(input.map { $0.ceasar(decode: true)! }) }
        guard input.count == key.count else { return nil }
        return String(zip(input, key).map {
            $0.0.ceasar(shiftKey: $0.1, decode: true)!
        })
    }
}
