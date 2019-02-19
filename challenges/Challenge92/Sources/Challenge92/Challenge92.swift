import Foundation

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
        var fast = next?.next
        var slow = next
        
        while fast != nil {
            fast?.next = slow
            fast = fast?.next
            slow = slow?.next
        }
        return self
    }
    
    private func link(previous element: Element) {
        
        if let nextElement = element.next {
            link(previous: nextElement)
            next?.next = element
        }
        next = element
    }
}

let elementNil = Element<Int>()
let elementOne = Element(1, nil)
let elementTwo = Element(2, elementOne)
let elementThree = Element(3, elementTwo)
let rev = elementThree.reverseElements()

rev.toArray()

//elementNil.toArray()
//elementOne.toArray()
//elementTwo.toArray()
//elementThree.toArray()
