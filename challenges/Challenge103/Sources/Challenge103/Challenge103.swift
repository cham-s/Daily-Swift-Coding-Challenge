class BinarySearchTree<T: Comparable> {
    public var data: T
    public var right: BinarySearchTree?
    public var left: BinarySearchTree?
    
    init(_ value: T) {
        self.data = value
    }
    
    public func insert(_ value: T) {
        func check(bt: BinarySearchTree) {
            let side = value > bt.data ? bt.right : bt.left
            let isRight = value > bt.data ? true : false
            
            guard side != nil else {
                if isRight {
                    bt.right = BinarySearchTree(value)
                } else {
                    bt.left = BinarySearchTree(value)
                }
                return
            }
            check(bt: side!)
        }
        check(bt: self)
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
        
        digLeft(node: self)
        digRight(node: self)
        return array
    }
}
