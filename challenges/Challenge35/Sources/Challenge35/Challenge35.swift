extension Collection where Iterator.Element: Equatable {
    func challenge35(indexOf element: Element) -> Int? {
        for (index, item) in self.enumerated() {
            if element == item {
                return index
            }
        }
        return nil
    }
}
