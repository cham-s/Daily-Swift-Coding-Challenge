
extension Collection where Iterator.Element: Comparable {
    func challenge38() -> Element? {
        return self.sorted().first
    }
}
