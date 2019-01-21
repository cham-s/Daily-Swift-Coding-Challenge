struct ListOps {
    static func append(_ destination: [Int], _ source: [Int]) -> [Int] {
        return destination + source
    }
    
    static func concat(_ destination: [Int], _ list: [Int]...) -> [Int] {
        var array = destination
        for item in list {
            array = ListOps.append(destination, item)
        }
        return array
    }
    
    static func filter(_ source: [Int], predicate: (Int) -> Bool) -> [Int] {
        var array: [Int] = []
        for item in source where predicate(item) == true {
            array = ListOps.append(array, [item])
        }
        return array
        
    }
    
    static func length(_ source: [Int]) -> Int {
        var count = 0
        for _ in source {
            count += 1
        }
        return count
    }
    
    static func map(_ source: [Int], _ transform: (Int) -> Int) -> [Int] {
        var array: [Int] = []
        for item in source {
            array = ListOps.append(array, [transform(item)])
        }
        
    }
}
