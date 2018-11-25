import Foundation

func challenge9(input: String) -> (consonants: Int, vowels: Int) {
    var output: (consonants: Int, vowels: Int)
    let consonantsSet = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    let vowelsSet = CharacterSet(charactersIn: "aeiou")
    
    output.consonants = input.filter { String($0).rangeOfCharacter(from: consonantsSet) != nil }.count
    output.vowels = input.filter { String($0).rangeOfCharacter(from: vowelsSet) != nil }.count
    
    return output
}
