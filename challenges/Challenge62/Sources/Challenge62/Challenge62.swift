import Foundation

struct Clock: Equatable {
    var hours: Int = 0
    var minutes: Int = 0
    var description: String {
        return String(format: "%02d:%02d", hours, minutes)
    }
    
    init(hours: Int, minutes: Int = 0) {
        updateClock(withHours: hours, andMinutes: minutes)
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
        print("/ 60 is \(h)")
        var m = withMinutes % 60
        
        if h > 0 {
            updateHours(withHours: h)
        }
        
        if m < 0 {
            m += 60
        }
        minutes = m
    }
    
    mutating func updateClock(withHours: Int, andMinutes: Int) {
        switch (withHours, andMinutes) {
        case (let hour, let minute) where hour >= 0 && minute >= 0:
            let currentMinutes = (hours * 60) + minutes
            let addedTotal = (hour * 60 + minute) + currentMinutes
            hours = addedTotal / 60
            minutes = addedTotal % 60
        case (let hour, let minute) where hour < 0 && minute >= 0:
            let currentMinutes = (hours * 60) + minutes
            let addedTotal = (hour * 60 + minute) + currentMinutes
            hours = addedTotal / 60
            minutes = addedTotal % 60
        case (let hour, let minute) where hour >= 0 && minute < 0:
            let currentMinutes = (hours * 60) + minutes
            let addedTotal = (hour * 60 - minute) + currentMinutes
            hours = addedTotal / 60
            minutes = addedTotal % 60
            
        }
    }
}
