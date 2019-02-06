enum Classifier {
    case equal
    case superlist
    case sublist
    case unequal
    
    init (first: [Int], second: [Int]) {
        guard first != second else {
            self = .equal
            return
        }
        let firstSet = Set(first)
        let secondSet = Set(second)
        if firstSet.isSubset(of: secondSet) {
            self = .sublist
            return
        }
        if firstSet.isSuperset(of: secondSet) {
            self = .superlist
        } else {
            self = .unequal
        }
    }
}



func classifier(listOne: [Int], listTwo: [Int]) -> Classifier {
    return Classifier(first: listOne, second: listTwo)
}
