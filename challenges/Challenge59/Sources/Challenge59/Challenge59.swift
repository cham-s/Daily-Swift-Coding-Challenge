

struct Hamming {
    static func compute(_ strand: String, against: String) -> Int? {
        guard strand.count == against.count else { return nil }
        var counter = 0
        for index in strand.indices {
            if against[index] != strand[index] {
                counter += 1
            }
        }
        return counter
    }
}
