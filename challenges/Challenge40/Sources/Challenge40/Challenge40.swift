import Foundation

func challenge40(_ numbers: Int...) -> Int {
    let countedSet = NSCountedSet(array: numbers)
    return countedSet.reduce(0) { (partialResult: Int, item: Any) in
        let number = item as! Int
        if countedSet.count(for: number) % 2 == 0 {
            return partialResult + number
        } else {
            return partialResult
        }
    }
}
