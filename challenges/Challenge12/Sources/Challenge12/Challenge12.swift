import Foundation

func challenge12(input: String) -> String {
    guard !input.isEmpty else { return "" }
    var output = ""
    var currentLetter: Character? = nil
    var letterCount = 0
    
    for letter in input {
        if currentLetter == nil {
            currentLetter = letter
            letterCount = 1
        } else {
            if let current = currentLetter,
                current != letter {
                output += "\(current)\(letterCount)"
                currentLetter = letter
                letterCount = 1
            } else {
                letterCount += 1
            }
        }
    }
    
    output += "\(currentLetter!)\(letterCount)"
    return output
}
