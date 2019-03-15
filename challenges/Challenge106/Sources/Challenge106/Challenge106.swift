func RomanNumeral(number: Int) -> String {
    let roman = [
        1 : "I",
        2 : "II",
        3 : "III",
        4 : "IV",
        5 : "V",
        6 : "VI",
        7 : "VII",
        8 : "VIII",
        9 : "IX",
        10: "X",
        50: "L",
        100: "C",
        1000: "M"
    ]
    let strNumber = String(number).reversed()
    var decomposed: [(Int, Int)] = []
    var power = 0
    
    for value in strNumber {
        let key = Int(pow(10.0, Double(power)))
        decomposed.append((key, Int(String(value))!))
        power += 1
    }
    print(Array(decomposed.reversed()))
    
    
    return ""
}
