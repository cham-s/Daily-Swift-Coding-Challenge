public extension IntegerLiteralType {
    func factorial() -> IntegerLiteralType {
        guard self > 1 else { return 1 }
        return (1...self).reversed().reduce(1) { $0 * $1 }
    }
}

public extension IntegerLiteralType {
    func choose(k: IntegerLiteralType) -> IntegerLiteralType {
        return self.factorial() / (k.factorial() * (self - k).factorial())
    }
}


class PascalsTriangle {
    
    private var size: Int
    
    public lazy var rows: [[Int]] = {
        var array: [[Int]] = []
        array.reserveCapacity(size)
        for size in 1...size {
            var sub: [Int] = []
            sub.reserveCapacity(size)
            for position in 0..<size {
                guard (size != 1 || size != 2) &&
                    (position != 0 && position != size - 1) else {
                        sub.append(1)
                        continue
                }
                let value = array[size - 2][position - 1] + array[size - 2][position]
                sub.append(value)
            }
            array.append(sub)
        }
        return array
    }()
    
    init(_ size: Int) {
        self.size = size
    }
}
