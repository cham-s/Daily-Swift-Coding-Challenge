import Foundation

func challenge9(input: String) -> (vowels: Int, consonants: Int) {
    guard !input.isEmpty else {
        return (0, 0)
    }
    
    let vowels = input.filter {
        String($0).rangeOfCharacter(from:
            CharacterSet(charactersIn: "aeiou")) != nil
    }.count
    let consonants = input.filter {
        String($0).rangeOfCharacter(from:
            CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")) != nil
    }.count
    
    return (vowels, consonants)
}
