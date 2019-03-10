struct OCR {
    enum OCRError: Error {
        case invalidNumberOfColumns
        case invalidNumberOfLines
        case invaliCharacter
    }
    
    private let correspondingOCR = [
        "_ \n| |\n|_|\n   ": "0",
        "   \n  |\n  |\n   ": "1",
        " _ \n _|\n|_ \n   ": "2",
        " _ \n _|\n _|\n   ": "3",
        "   \n|_|\n  |\n   ": "4",
        " _ \n|_ \n _|\n   ": "5",
        " _ \n|_ \n|_|\n   ": "6",
        ]
    
    private var input: String
    private var columnCountIsValid: Bool {
        return input.count % 3 == 0
    }
    
    private func lines() throws -> [String] {
        return input.split(separator: "\n").map { String($0) }
    }
    
    private func columns() throws -> [String] {
        guard columnCountIsValid else { return [] }
        let colCount = lines[0].count / 3
        return (1..<colCount).reduce([]) { partial, colIndex in
            let m: [String] =  lines.map {
                let start = $0.index($0.startIndex, offsetBy: colIndex * 3)
                let endIndex = $0.index(start, offsetBy: 3)
                return String($0[start..<endIndex])
            }
            return partial + [m.joined(separator: "\n")]
        }
    }
    
    init(_ input: String) {
        self.input = input
    }
    
    public func converted() throws -> String {
        let splitted = input.split(separator: "\n")
        guard splitted.count == 4 else {
            throw OCRError.invalidNumberOfLines
        }
        
        guard (splitted.first { $0.count != 3 }) == nil else {
            throw OCRError.invalidNumberOfColumns
        }
        
        
        return correspondingOCR[input] ?? "?"
    }
    
    
}
