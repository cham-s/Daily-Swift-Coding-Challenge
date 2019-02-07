enum Classifier {
    case equal
    case superlist
    case sublist
    case unequal
    
    init (first: [Int], second: [Int]) {
        switch (first, second) {
        case (let one, let two) where one.isEqual(to: two):
            self = .equal
        case (let one, let two) where one.isSuperList(of: two):
            self = .superlist
        case (let one, let two) where two.isSuperList(of: one):
            self = .sublist
        default:
            self = .unequal
        }
    }
}

extension Array where Element: Comparable {
    func isEqual(to list: [Element]) -> Bool {
        return self == list
    }
    
    func isSuperList(of list: [Element]) -> Bool {
        if !isEmpty && list.isEmpty {
            return true
        }
        
        var selfIndex = 0
        var listIndex = 0
        while true {
            if self[selfIndex] == list[listIndex] {
                selfIndex += 1
                listIndex += 1
                if listIndex == list.count - 1 {
                    return true
                }
                if selfIndex == count - 1 {
                    return false
                }
            } else {
                listIndex = 0
                selfIndex += 1
                if selfIndex == count - 1 {
                    return false
                }
            }
        }
    }
}

func classifier(listOne: [Int], listTwo: [Int]) -> Classifier {
    return Classifier(first: listOne, second: listTwo)
}
