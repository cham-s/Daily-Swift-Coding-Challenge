import Foundation

func challenge21(_ input: String) -> Bool {
    let notNumberSet = CharacterSet(charactersIn: "0123456789").inverted
    return input.rangeOfCharacter(from: notNumberSet) == nil
}
