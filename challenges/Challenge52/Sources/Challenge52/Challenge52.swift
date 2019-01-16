import Foundation

struct Gigasecond {
    var description: String
    
    init?(from: String) {
        let RFC3339DateFormatter = DateFormatter()
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        let date = RFC3339DateFormatter.date(from: from)
        
        if var date = date {
            date.addTimeInterval(1_000_000_000)
            description = RFC3339DateFormatter.string(from: date)
        } else {
            return nil
        }
    }
}
