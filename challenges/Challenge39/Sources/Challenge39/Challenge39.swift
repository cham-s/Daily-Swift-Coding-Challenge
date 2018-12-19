struct deque<T> {
    private var values = [T]()
    var count: Int {
        return values.count
    }
    
    mutating func pushBack(_ element: T) {
        values.append(element)
    }
    
    mutating func pushFront(_ element: T) {
        values.insert(element, at: 0)
    }
    
    mutating func popFront() -> T? {
        guard values.count > 0 else { return nil }
        return values.removeFirst()
    }
    
    mutating func popBack() -> T? {
        return values.popLast()
    }
}
