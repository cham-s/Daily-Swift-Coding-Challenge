import Foundation

struct Grains {
    
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
    
    
    static var total: UInt64 {
       return (1...64).reduce(UInt64(0)) {
            if let number = squares[$1] {
                return $0 + number
            } else {
                squares[$1] = calculateGrains(forSquare: $1)
                return $0 + squares[$1]!
            }
        }
    }
    
    static var squares: [Int: UInt64] = [:]
    static func square(_ number: Int) throws -> UInt64 {
        guard number > 0 && number < 65 else {
            if number < 1 {
                throw GrainsError.inputTooLow("Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
            } else {
                throw GrainsError.inputTooHigh("Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
            }
        }
        
        guard number != 1 else { return 1 }
        if let value = squares[number] {
            return value
        } else {
            squares[number] = calculateGrains(forSquare: number)
            return squares[number]!
        }
      
    }
    
    private static func calculateGrains(forSquare: Int) -> UInt64 {
        return UInt64(pow(2, Double(forSquare - 1)))
    }
}

