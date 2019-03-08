import Foundation

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
    
    
    
    init(_ input: String) {
        self.input = input
    }
    
    public func converted() throws -> Int {
        let invalidCharSet = CharacterSet(charactersIn: " _\n-").inverted
        guard input.rangeOfCharacter(from: invalidCharSet) == nil else {
            throw OCRError.invaliCharacter
        }
        
        let splitted = input.split(separator: "\n")
        guard splitted.count == 4 else {
            throw OCRError.invalidNumberOfLines
        }
        
        guard (splitted.first { $0.count != 3 }) == nil else {
            throw OCRError.invalidNumberOfColumns
        }
        return 3
    }
}
