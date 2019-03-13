import Foundation

public extension Int {
    public func isDivisibleBy(_ number: Int) -> Bool {
        return self % number == 0
    }
}

struct OCR {
    enum OCRError: Error {
        case invalidNumberOfColumns
        case invalidNumberOfLines
    }
    
    private let correspondingOCR = [
        " _ \n| |\n|_|\n   ": "0",
        "   \n  |\n  |\n   ": "1",
        " _ \n _|\n|_ \n   ": "2",
        " _ \n _|\n _|\n   ": "3",
        "   \n|_|\n  |\n   ": "4",
        " _ \n|_ \n _|\n   ": "5",
        " _ \n|_ \n|_|\n   ": "6",
        " _ \n  |\n  |\n   ": "7",
        " _ \n|_|\n|_|\n   ": "8",
        " _ \n|_|\n _|\n   ": "9",
        "   \n   \n   \n   ": ","
    ]
    
    private var input: String
    private let maxColSize = 3
    private let maxLineSize = 4
    
    public var lines: [String] {
        return input.split(separator: "\n").map { String($0) }
    }
    
    public var columns: [[String]] {
        let isOK: (String) -> Bool = { $0.count.isDivisibleBy(self.maxColSize) }
        guard let first = lines.first(where: isOK) else { return [] }
        let colCount = first.count / maxColSize
        guard colCount > 1 else {
            return [] + [lines]
        }
        return (0..<colCount).reduce([]) { partial, colIndex in
            let m: [String] =  lines.map {
                let start = $0.index($0.startIndex,
                                     offsetBy: colIndex * maxColSize)
                let endIndex = $0.index(start, offsetBy: 3)
                return String($0[start..<endIndex])
            }
            return partial + [m]
        }
    }
    
    init(_ input: String) {
        self.input = input
    }
    
    public func converted() throws -> String {
        var output = ""
        
        for col in columns {
            let number = col.joined(separator: "\n")
            guard number.count.isDivisibleBy(maxColSize)   else {
                throw OCRError.invalidNumberOfColumns
            }
            guard col.count == maxLineSize else {
                throw OCRError.invalidNumberOfLines
            }
            output += correspondingOCR[number] ?? "?"
        }
        return output
    }
}
