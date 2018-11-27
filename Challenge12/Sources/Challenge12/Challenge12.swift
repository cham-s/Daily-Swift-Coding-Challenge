import Foundation

func challenge12(input: String) -> String {
    guard var currentLetter = input.first else { return "" }
    let inputArray = Array(input)
    var count = 0
    var output = ""
    for index in 0..<input.count {
        if inputArray[index] != currentLetter {
            output += "\(currentLetter)\(count)"
            count = 0
            currentLetter = inputArray[index]
        }
        count += 1
    }
    output += "\(currentLetter)\(count)"
    
    return output
}
