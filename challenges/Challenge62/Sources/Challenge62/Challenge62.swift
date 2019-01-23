import Foundation

struct Clock: Equatable {
    var hours: Int = 0
    var minutes: Int = 0
    var description: String {
        let totalMinutes = 60 * hours + minutes
        var h = (totalMinutes / 60) % 24
        if h < 0 {
            h = h + 24
        }
        
        let m = totalMinutes % 60
        return String(format: "%02d:%02d", h, m)
    }
    
    init(hours: Int, minutes: Int = 0) {
        self.hours = hours
        self.minutes = minutes
    }
    
    mutating func add(minutes: Int) {
        self.minutes += minutes
    }
    
    mutating func subtract(minutes: Int) {
        self.minutes -= minutes
    }
    
    static func  == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs.minutes == rhs.minutes &&
              lhs.hours == rhs.hours
    }
}
