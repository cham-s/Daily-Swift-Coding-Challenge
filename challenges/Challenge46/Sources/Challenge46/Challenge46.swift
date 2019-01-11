import Foundation

func funnel(compare: String, with str: String) -> Bool {
    
    guard compare.dropLast() != str else { return true }
    
    for index in compare.indices {
        var copy = compare
        _ = copy.remove(at: index)
        if copy == str {
            return true
        }
    }
    return false
}
