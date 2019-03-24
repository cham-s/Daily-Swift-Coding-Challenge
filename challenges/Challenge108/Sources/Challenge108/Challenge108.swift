struct Say {
    public let number: String
    
    init(_ number: Int) {
        self.number = String(number)
    }
    
    public func say() -> String {
        var decompose = number.reversed().enumerated().map {
            ($0.offset, Int(String($0.element))!)
            }.reversed()
        print(decompose)
        return ""
    }
}
