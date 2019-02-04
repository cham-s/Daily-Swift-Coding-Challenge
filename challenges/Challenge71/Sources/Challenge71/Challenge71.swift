import Foundation

struct PhoneNumber {
    var areaCode = "000"
    var exchangeCode = "000"
    var subscriber = "0000"
    var number = "0000000000"
    
    init(_ number: String) {
        var filtered = number.filter {
            String($0).rangeOfCharacter(from: CharacterSet.decimalDigits) != nil
        }
        guard filtered.count == 11 || filtered.count == 10 else {
            return
        }
        if filtered.count == 11 {
            if String(filtered.removeFirst()) != "1" {
                return
            }
        }
        let endArea = filtered.index(filtered.startIndex, offsetBy: 3)
        let endtExchange = filtered.index(endArea, offsetBy: 3)
        let area = String(filtered[filtered.startIndex..<endArea])
        var firstNumber = Int(String(area[area.startIndex]))!
        guard firstNumber > 1 || firstNumber < 10 else {
            return
        }
        let exchange = filtered[endArea..<endtExchange]
        firstNumber = Int(String(exchange[exchange.startIndex]))!
        guard firstNumber > 1 || firstNumber < 10 else {
            return
        }
        self.areaCode = String(area)
        self.exchangeCode = String(exchange)
        self.subscriber = String(filtered[endtExchange..<filtered.endIndex])
        self.number = filtered
    }
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
        return "(\(areaCode)) \(exchangeCode)-\(subscriber)"
    }
}
