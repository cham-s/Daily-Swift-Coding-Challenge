import Foundation

struct Clock {
    var hours: Int = 0
    var minutes: Int = 0
    var description: String {
        return String(format: "%02d:%02d", hours, minutes)
    }
    
    init(hours: Int, minutes: Int = 0) {
        self.hours = hours
        self.minutes = minutes
    }
    
    mutating func add(minutes: Int) {
        
    }
}
