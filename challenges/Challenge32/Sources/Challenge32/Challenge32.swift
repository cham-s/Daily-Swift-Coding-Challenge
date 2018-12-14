extension Collection where Iterator.Element == String {
    func challenge32() -> [Element] {
        return sorted(by: { $0.count > $1.count })
    }
}

