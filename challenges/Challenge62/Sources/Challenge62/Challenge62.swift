import Foundation

struct Clock: Equatable {
    var hours: Int = 0
    var minutes: Int = 0
    var description: String {
        return String(format: "%02d:%02d", hours, minutes)
    }
    
    init(hours: Int, minutes: Int = 0) {
        updateMinutes(withMinutes: minutes)
        updateHours(withHours: hours)
    }
    
    mutating func add(minutes: Int) {
        self.minutes += minutes
    }
    
    mutating func subtract(minutes: Int) {
        self.minutes -= minutes
    }
    
    mutating func updateHours(withHours: Int) {
        var h = withHours % 24
        if h < 0 {
            h += 24
        }
        hours = (hours + h) % 24
    }
    
    mutating func updateMinutes(withMinutes: Int) {
        let h = withMinutes / 60
        var m = withMinutes % 60
        if h > 0 {
            updateHours(withHours: h)
        }
        
        if m < 0 {
            m += 60
        }
        minutes = m
    }
}
