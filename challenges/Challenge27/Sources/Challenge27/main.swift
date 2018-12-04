import Foundation

func challenge27(filename: String, word: String) -> Int? {
    guard let content = try? String(contentsOfFile: filename) else {
        print("大変です")
        return nil
    }
    
    var validSet = CharacterSet.letters.inverted
    validSet.remove("'")
    let components = content.components(separatedBy: validSet)
    return components.filter { $0 == word }.count
}

let result = challenge27(filename: "./input", word: "Hello")

print(result ?? "niled")


