import Foundation


class Node<T: Comparable> {
    
}

class BinarySearchTree<T: Comparable> {
    public var data: T
    public var right: BinarySearchTree?
    public var left: BinarySearchTree?
    
    init(_ value: T) {
        self.data = value
    }
    
    public func insert(_ value: T) {
        var tmp: BinarySearchTree? =  self
        while let current = tmp {
            tmp = value < current.data ? current.left : current.right
        }
        tmp = BinarySearchTree(value)
    }
}

