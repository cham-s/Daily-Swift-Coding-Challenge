import Foundation

//enum Number {
//    case withCountryCode
//    case withoutCountryCode
//    case invalid
//
//    init(_ count: String) {
//        switch count {
//        case 10:
//            self = .withoutCountryCode
//        case 11:
//            self = .withCountryCode
//        default:
//            self = .invalid
//        }
//    }
//}

struct PhoneNumber {
    var areaCode = "000"
    var exchangeCode = "000"
    var subscriber = "0000"
    var number = "0000000000"
    
    init(number: String) {
        var filtered = number.filter {
            String($0).rangeOfCharacter(from: CharacterSet.decimalDigits) != nil
        }
        guard filtered.count == 11 || filtered.count == 10 else {
            return
        }
        
        _ = filtered.count == 11 ? String(filtered.removeFirst()) : ""
        let endArea = filtered.index(filtered.startIndex, offsetBy: 3)
        let endtExchange = filtered.index(endArea, offsetBy: 3)
        let area = String(filtered[filtered.startIndex..<endArea])
        let firstNumber = Int(String(area[area.startIndex]))!
        guard firstNumber > 1 || firstNumber < 10 else {
            countryCode = ""
            return
        }
        exchangeCode = String(filtered[endArea..<endtExchange])
        subscriber = String(filtered[endtExchange...filtered.endIndex])
        self.number = filtered
    }
    
//    mutating private func check(number: String) -> Bool {
//
//    }
}

