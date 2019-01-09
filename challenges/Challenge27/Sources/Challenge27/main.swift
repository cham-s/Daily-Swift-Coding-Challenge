import Foundation

func frequency(ofWord: String, fromFilename: String) -> Int {
    guard let content = try? String(contentsOfFile: fromFilename) else { return 0 }
    var nonLetters = CharacterSet.letters.inverted
    nonLetters.remove(charactersIn: "'")
    
    let words = content.components(separatedBy: nonLetters)
    return words.filter { $0 == ofWord }.count
}

print(frequency(ofWord: "I'm", fromFilename: "./input.txt"))
