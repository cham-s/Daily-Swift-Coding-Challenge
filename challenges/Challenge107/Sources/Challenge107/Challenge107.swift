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
    
    public var ceasared: Character? {
        guard isAlpha else { return nil }
        let ceasrOffSet = 3
        let index = (alphabet.firstIndex(of: self)! + ceasrOffSet) % 26
        return alphabet[index]
    }
    
    public func ceasar(shift: Int) -> Character? {
        
    }
}
