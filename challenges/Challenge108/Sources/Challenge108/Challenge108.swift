import Foundation

struct Say {
    // TODO: Create a type out of number to string?
    public let number: Int
    private let teen = "teen"
    private let ty = "ty"
    private let powers = [
        2: "hundred",
        3: "thousand",
        6: "million",
        11: "billion"
    ]
    
    private let units = [
        0: "zero",
        1: "one",
        2: "two",
        3: "three",
        4: "four",
        5: "five",
        6: "six",
        7: "seven",
        8: "eight",
        9: "nine",
    ]
    
    private let teens = [
        11: "eleven",
        12: "twelve",
        13: "thirteen",
        14: "fourteen",
        15: "fifteen",
        16: "sixteen",
        17: "seventeen",
        18: "eighteen",
        19: "nineteen"
    ]
    
    private let tens = [
        10: "ten",
        20: "twenty",
        30: "thirty",
        40: "foury",
        50: "fifty",
        60: "sixty",
        70: "seventy",
        80: "eighty",
        90: "ninety"
    ]
    
    // TODO: Do I really need this let's check it later.
    private var assembled: [ String: [Int: String] ] {
        return [
            "units": units,
            "teens": teens,
            "tens": tens,
            "power": powers
        ]
    }
    init(_ number: Int) {
        self.number = number
    }
    
    public func say() -> String {
        // (time, power)
        var destructured = String(number)
            .reversed()
            .enumerated()
            .map { (Int(String($0.element))!, $0.offset) }
            .reversed()
        
        //        destructured.forEach { print("time: \($0.0) power: \($0.1)") }
        return ""
    }
    
}

