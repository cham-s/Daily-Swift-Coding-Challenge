extension Collection {
    func challenge37<T>(transform: (Element) throws -> T) rethrows -> [T] {
        var result = [T]()

        for element in self {
            result.append(try transform(element))
        }
        return result
    }
}
