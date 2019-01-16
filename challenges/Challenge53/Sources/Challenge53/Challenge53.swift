import Foundation

class Squares {
    var value: Int
    lazy var squareOfSums: Int = {
        let number = (1...value).reduce(0, +)
        return number * number
    }()
    lazy var sumOfSquares: Int = {
        return (1...value).reduce(0) { $0 + ($1 * $1) }
    }()
    lazy var differenceOfSquares: Int = {
        return squareOfSums - sumOfSquares
    }()
    
    init(_ value: Int) {
        self.value = value
    }
}
