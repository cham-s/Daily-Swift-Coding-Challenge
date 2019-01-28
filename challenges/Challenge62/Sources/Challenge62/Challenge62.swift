import Foundation

struct Clock: Equatable {
    var hours: Int = 0
    var minutes: Int = 0
    var description: String {
        return String(format: "%02d:%02d", hours, minutes)
    }
    
    init(hours: Int, minutes: Int = 0) {
        var h = minutes + (60 * hours)
        var m = h % 60
        if m < 0 {
            h += m
        }
        h /= 60
        h  %= 24
        if h < 0 {
            h += 24
        }
        if m < 0 {
            m += 60
        }
        
        self.hours = h == 24 ? 0 : h
        self.minutes = m == 60 ? 0 : m
    }
    
    mutating func add(minutes: Int) {
        var h = minutes + (60 * hours)
        var m = h % 60
        h += m
        h /= 60
        if h < 0 {
            h += 24
        }
        if m < 0 {
            m += 60
        }
        
        self.hours = h
        self.minutes = m
    }
    
    mutating func subtract(minutes: Int) {
        var h = minutes + (60 * hours)
        var m = h % 60
        h += m
        h /= 60
        if h < 0 {
            h += 24
        }
        if m < 0 {
            m += 60
        }
        
        self.hours = h
        self.minutes = m    }
    
    static func ==(lhs: Clock, rhs: Clock) -> Bool {
        return lhs.hours == rhs.hours && lhs.minutes == lhs.minutes
    }
}
