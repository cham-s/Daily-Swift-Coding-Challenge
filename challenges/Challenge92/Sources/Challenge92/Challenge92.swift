class Element<T> {
    var value: T?
    var next: Element?
    private var start: Element?
    
    init(_ value: T? = nil, _ next: Element? = nil) {
        self.value = value
        self.next = next
        start = next
    }
    
    func toArray() -> [T] {
        var array: [T] = []
        if let val = value {
            array.append(val)
        }
        var tmp = next
        while let nextNode = tmp {
            if let val = nextNode.value {
                array.append(val)
                tmp = tmp?.next
            }
        }
        return array
    }
    
    func reverseElements() -> Element {
        start = self.next
        link(previous: self)
        start = nil
        return next!
    }
    
    private func link(previous element: Element) {
        
        if let nextElement = element.next {
            link(previous: nextElement)
            next?.next = element
        }
        next = element
    }
}
