class LinkedListNode<Element> {
    var node: Element
    var next: LinkedListNode?
    
    init(element: Element) {
        node = element
    }
}

class LinkedList<Element> {
    var start: LinkedListNode<Element>?
    init(element: Element) {
        start = LinkedListNode<Element>(element: element)
    }
    
    init(elements: [Element]) {
        append(elements: elements)
    }
    
    func append(element: Element) {
        if var currentStart = start {
            while let nextNode = currentStart.next {
                currentStart = nextNode
            }
            currentStart.next = LinkedListNode<Element>(element: element)
        } else {
            start = LinkedListNode<Element>(element: element)
        }
    }
    
    func append(elements: [Element]) {
        for item in elements {
            append(element: item)
        }
    }
    
    func printElements() {
        var start = self.start
        while let currentNode = start {
            print(currentNode.node, terminator: " ")
            start = currentNode.next
        }
    }
}
