import Foundation

struct Queen {
    var white: [Int] = []
    var black: [Int] = []
    private let maxColAndRow = 7
    
    var description: String {
        var ouput = ""
        for row in 0...maxColAndRow {
            for col in 0...maxColAndRow {
                let currentCoordinates = [row, col]
                if currentCoordinates == white {
                    ouput += col == maxColAndRow ? "W" : "W "
                } else if currentCoordinates == black {
                    ouput += col == maxColAndRow ? "B" : "B "
                } else {
                    ouput += col == maxColAndRow ? "_" : "_ "
                }
            }
            ouput += "\n"
        }
        return ouput
    }
    
    var canAttack: Bool {
        let white = (row: self.white[0], col: self.white[1])
        let black = (row: self.black[0], col: self.black[1])
        
        guard white.col != black.col || white.row != black.row else {
            return true
        }
        
        let forewardRow = (maxColAndRow - white.row)...maxColAndRow
        let backwardRow = ((maxColAndRow - white.row)...maxColAndRow).reversed()
        let forewardCol = (maxColAndRow - white.col)...maxColAndRow
        let backwardCol = ((maxColAndRow - white.col)...maxColAndRow).reversed()
        return false
    }
    
    
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case incorectCoordinates
        case sameSpace
    }
    
    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        try checkCoordinatesFor(white: white, black: black)
        self.white = white
        self.black = black
    }
    
    private func checkCoordinatesFor(white: [Int], black: [Int]) throws {
        guard white.count == 2 && black.count == 2 else {
            throw InitError.incorrectNumberOfCoordinates
        }
        guard white != black else {
            throw InitError.sameSpace
        }
        for value in white + black {
            guard value >= 0 && value <= 7 else {
                throw InitError.incorectCoordinates
            }
        }
    }
}
