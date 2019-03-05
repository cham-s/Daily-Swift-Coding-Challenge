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
    
    public func allData() -> [T] {
        
        var array: [T] = []
        
        func digLeft(node: BinarySearchTree) {
            if let leftSide = node.left {
                digLeft(node: leftSide)
            }
            array.append(node.data)
        }
        func digRight(node: BinarySearchTree) {
            if let rightSide = node.right {
                digRight(node: rightSide)
            }
            array.append(node.data)
        }
        
        //digLeft(node: self)
        digRight(node: self)
        return array
    }
}


