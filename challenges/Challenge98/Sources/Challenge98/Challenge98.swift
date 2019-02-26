import Foundation

struct SaddlePointsMatrix {
    var matrixStr: String
    var rows: [[Int]] {
        return matrixStr.split(separator: "\n")
            .map { $0.split(separator: " ").map { Int($0)! } }
    }
    
    
    init(_ matrix: String) {
        matrixStr = matrix
    }
}
