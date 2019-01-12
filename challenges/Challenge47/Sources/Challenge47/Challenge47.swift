
/*
 
 https://www.reddit.com/r/dailyprogrammer/comments/a72sdj/20181217_challenge_370_easy_upc_check_digits/
 The 12th digit (4 in this case) is a redundant check digit, used to catch errors. Using some simple calculations, a scanner can determine, given the first 11 digits, what the check digit must be for a valid code. (Check digits have previously appeared in this subreddit: see Intermediate 30 and Easy 197.) UPC's check digit is calculated as follows (taken from Wikipedia):
 Sum the digits at odd-numbered positions (1st, 3rd, 5th, ..., 11th). If you use 0-based indexing, this is the even-numbered positions (0th, 2nd, 4th, ... 10th).
 Multiply the result from step 1 by 3.
 Take the sum of digits at even-numbered positions (2nd, 4th, 6th, ..., 10th) in the original number, and add this sum to the result from step 2.
 Find the result from step 3 modulo 10 (i.e. the remainder, when divided by 10) and call it M.
 If M is 0, then the check digit is 0; otherwise the check digit is 10 - M.
 
 */

import Foundation

// Returns a tuples of two arrays one where the predicate is true and the other.
extension Collection {
    func separatedFilter(_ isInclude: (Element) throws -> Bool
        ) rethrows -> (isIncluded: [Element], isNotIncluded: [Element]) {
        var isPredicate = ContiguousArray<Element>()
        var isNotPredicate = ContiguousArray<Element>()
        
        var iterator = self.makeIterator()
        
        while let element = iterator.next() {
            if try isInclude(element) {
                isPredicate.append(element)
            } else {
                isNotPredicate.append(element)
            }
        }
        return (Array(isPredicate), Array(isNotPredicate))
    }
}

func upc(_ code: String) -> Int {
    guard code.rangeOfCharacter(
        from: CharacterSet(charactersIn: "0123456789").inverted) == nil else {
            return 0
    }
    let leadingZeros = 11 - code.count
    let padded =  String(repeating: "0", count: leadingZeros) + code
    let codeArray = padded.map { Int(String($0))! }
    let (odd, even) = (0..<codeArray.count).separatedFilter { $0 % 2 == 0 }
    let oddResult = odd.reduce(0) { $0 + codeArray[$1] } * 3
    let evenResult = even.reduce(0) { $0 + codeArray[$1] } + oddResult
    let m = evenResult % 10
    
    return m == 0 ? 0 : 10 - m
}
