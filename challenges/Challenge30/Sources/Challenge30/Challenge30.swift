

extension Collection where Iterator.Element == Int {
    func challenge30(count: Character) -> Int {
        return self.reduce("", { String($0) + String($1) }).filter { $0 == count }.count
    }
}
