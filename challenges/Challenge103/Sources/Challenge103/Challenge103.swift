import Foundation


class BinarySearchTree<T: Comparable> {
    public var data: T
    public var right: BinarySearchTree?
    public var left: BinarySearchTree?
    
    init(_ value: T) {
        self.data = value
    }
    
    public func insert(_ value: T) {
        var tmp =  self
        if value > data {
            while let current = tmp.right { tmp = current }
            tmp.right = BinarySearchTree(value)
        } else {
            while let current = tmp.left { tmp = current }
            tmp.left = BinarySearchTree(value)
        }
    }
    
    
}


