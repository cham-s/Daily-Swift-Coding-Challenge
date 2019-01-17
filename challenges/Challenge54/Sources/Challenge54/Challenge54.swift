import Foundation

struct Nucleotide {
    
    enum CharacterError: Error {
        case invalid(string: String)
    }
    
    private let complements: [String: String] = [
        "G": "C",
        "C": "G",
        "T": "A",
        "A": "U"
    ]
    
    var strand: String
    
    init(_ strand: String) {
        self.strand = strand
    }
    
    func complementOfDNA() throws -> String {
        let invalidSet =  CharacterSet(charactersIn: "GCTA").inverted
        guard strand.rangeOfCharacter(from: invalidSet) == nil  else {
            throw CharacterError.invalid(string: strand)
        }
        
        return strand.map { complements[String($0)]! }.joined()
    }
}
