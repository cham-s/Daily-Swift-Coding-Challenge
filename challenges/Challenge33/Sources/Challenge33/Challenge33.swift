
extension Collection where Iterator.Element == Int {
    func challenge33() -> [Element] {
        let selfSet = Set(Array(self))
        let defaultSet = Set(Array(1...100))
        return Array(defaultSet.symmetricDifference(selfSet)).sorted()
    }
}
