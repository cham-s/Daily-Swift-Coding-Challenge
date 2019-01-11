import Foundation

func funnel(compare: String, with str: String) -> Bool {
    if compare.dropFirst() == str || compare.dropLast() == str { return true }
    
    for index in compare.indices {
        var copy = compare
        _ = copy.remove(at: index)
        if copy == str {
            return true
        }
    }
    return false
}
