extension Collection {
    func challenge37<T>(transform: (Element) throws -> T) rethrows -> [T] {
        var result = [T]()
        forEach { result.append(transform($0)) }
        return result
    }
}
