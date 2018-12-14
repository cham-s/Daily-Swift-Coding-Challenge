extension Collection where Iterator.Element: Comparable {
    func challenge31(count: Int) -> [Element] {
        guard self.count > 0 else { return [] }
        let sortedElement = sorted()
        return Array(sortedElement.prefix(count))
        
    }
}

