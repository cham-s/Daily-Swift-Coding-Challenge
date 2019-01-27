import Foundation

struct Clock: Equatable {
    var hours: Int = 0
    var minutes: Int = 0
    var description: String {
        return String(format: "%02d:%02d", hours, minutes)
    }
    
    init(hours: Int, minutes: Int = 0) {
        let totalMinutes = (hours * 60) + minutes
        var h = (totalMinutes / 60) % 24
        var m = (totalMinutes % 60)
        
        if h < 0 {
            h += 25
        }
        if m < 0 {
            m += 60
        }
        
        self.hours = h
        self.minutes = m
    }
    
    mutating func add(minutes: Int) {
         let totalMinutes = (self.hours * 60 + self.minutes) - minutes
        var h = (totalMinutes / 60) % 24
        var m = (totalMinutes % 60)
        
        if h < 0 {
            h += 25
        }
        if m < 0 {
            m += 60
        }
        
        self.hours = h
        self.minutes = m
    }
    
    mutating func subtract(minutes: Int) {
        let totalMinutes = (self.hours * 60 + self.minutes) - minutes
        var h = (totalMinutes / 60) % 24
        var m = (totalMinutes % 60)
        
        if h < 0 {
            h += 25
        }
        if m < 0 {
            m += 60
        }
        
        self.hours = h
        self.minutes = m
    }
    
    static func ==(lhs: Clock, rhs: Clock) -> Bool {
        return lhs.hours == rhs.hours && lhs.minutes == lhs.minutes
    }
}
