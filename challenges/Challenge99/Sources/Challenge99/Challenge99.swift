struct PascalsTriangle {
    
}


let count = 4
var array: [[Int]] = []
array.reserveCapacity(count)
for size in 1..<count {
    var sub: [Int] = []
    sub.reserveCapacity(size)
    for position in sub.indices {
        guard sub.count == 1 else {
            sub[position] = 1
            continue
        }
        guard
            sub[position] = array[size - 1][position]
    }
}
