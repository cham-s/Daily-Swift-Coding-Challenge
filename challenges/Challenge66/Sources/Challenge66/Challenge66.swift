import Foundation

enum Plant: Character, CaseIterable {
    case radishes = "R"
    case clover = "C"
    case grass = "G"
    case violet = "V"
}
struct Garden {
    var children: [String] = []
    var diagram = ""
    var plantsOwner: [String: Plant] = [:]
    
    
    init(_ diagram: String, children: [String] = []) {
        guard isInputCorrectFor(diagram, children) else { return }
        self.children = children
        self.diagram = diagram
        populatePlantsOwner()
    }
    
    // This is a hook since the exercise and tests do not require the init
    // function to be failable the diagram and children are set to empty if
    // the input from the API user is not correct. A better solution would be
    // to notify exercism by submitting a suggestion (or PR) about making the
    // init failable (with Optional or throw).
    private mutating func isInputCorrectFor(_ diagram: String,
                                            _ children: [String]) -> Bool {
        let levels = diagram.components(separatedBy: "\n")
        let validSymbols = String(Plant.allCases.map { $0.rawValue })
        let invalidSet = CharacterSet(charactersIn: validSymbols).inverted
        for level in levels {
            guard level.rangeOfCharacter(from: invalidSet) == nil else {
                return false
            }
            guard level.count / 2 == children.count else {
                return false
            }
        }
        return true
    }
    
    private mutating func reset() {
        self.diagram = ""
        self.children = []
    }
    
    func plantForChild(_ name: String) -> [Plant] {
        return [.clover]
    }
    
    private mutating func populatePlantsOwner() {
        let levels = diagram.components(separatedBy: "\n")
        guard levels.isEmpty == false else { return }
        var lowerBound = 0
        var index = 0
        for level in levels {
            let count = level.count
            for upperBound in stride(from: 0, to: count + 2, by: 2) {
                guard upperBound != 0 else { continue }
                print("\(upperBound)")
                let startIndex = level.index(level.startIndex, offsetBy: lowerBound)
                let lastIndex = level.index(level.startIndex, offsetBy: upperBound)
                let plantSymbols = level[startIndex..<lastIndex]
                for symbol in plantSymbols {
                    let name = children[index]
                    plantsOwner[name] = Plant(rawValue: symbol)!
                }
                lowerBound = upperBound
                index += 1
            }
        }
    }
}
