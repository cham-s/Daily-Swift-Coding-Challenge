import Foundation

struct SaddlePointsMatrix {
    var matrixStr: String
    var rows: [[Int]] {
        return matrixStr.split(separator: "\n")
            .map { $0.split(separator: " ").map { Int($0)! } }
    }
    
    var columns: [[Int]] {
        let count = rows[0].count
        return (0..<count).reduce([]) { partial, index in
            partial + [ rows.map { $0[index] } ]
        }
    }
    
    init(_ matrix: String) {
        matrixStr = matrix
    }
}
