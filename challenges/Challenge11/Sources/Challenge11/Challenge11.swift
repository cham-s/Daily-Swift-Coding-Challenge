import Foundation

public func challenge11(input: String) -> String {
    let elements = input.components(separatedBy: " ")
    var longestSuffix = ""
    
    for element in elements {
        let arrayElement = Array(element)
        for item in elements {
            guard item != element else { continue }
            let arrayItem = Array(item)
            var index = 0
            var currentLongest = [Character]()
            while arrayItem[index] == arrayElement[index] {
                currentLongest.append(arrayItem[index])
                index += 1
            }
            if currentLongest.count > longestSuffix.count {
                longestSuffix = String(currentLongest)
            }
        }
    }
    return longestSuffix
}

