import Foundation

func challenge6(input: String) -> String {
    var output = [Character]()
    for letter in input {
        if !output.contains(letter) {
            output.append(letter)
        }
    }
    return String(output)
}
