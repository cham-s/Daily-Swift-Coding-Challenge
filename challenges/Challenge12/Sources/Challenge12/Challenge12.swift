import Foundation

func challenge12(input: String) -> String {
    guard input.startIndex != input.endIndex else { return "" }
    
    let offByOneStart = input.index(after: input.startIndex)
    var currentChar = input[input.startIndex]
    
    var charCount = 1
    
    let partialString =  input[offByOneStart...].reduce("") { output, char in
        var outputTmp = ""
        if char == currentChar {
            charCount += 1
            return output + outputTmp
        }
        
        outputTmp = "\(currentChar)\(charCount)"
        charCount = 1
        currentChar = char
        return output + outputTmp
    }
    
    return partialString + "\(currentChar)\(charCount)"
}
