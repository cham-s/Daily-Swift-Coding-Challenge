import Foundation

struct Meetup {
    typealias Day = Int
    typealias Month = Int
    typealias Year = Int
    typealias Option = String
    
    enum Descriptor: String {
        case first = "1st"
        case second = "2nd"
        case thrid = "3rd"
        case fourth = "4th"
        case fifth = "5th"
        case last
        case monteenth
        case tuesteenth
        case wednesteenth
        case thursteenth
        case friteenth
        case saturteenth
        case sunteenth
    }
    
    enum DayOfWeek: Int {
        case sunday = 1
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
    }
    
    struct Date: CustomStringConvertible {
        var year: Year = 0
        var month: Month = 0
        var day: Day = 0
        
        init(year: Year, month: Month) {
            self.year = year
            self.month = month
        }
        
        var description: String {
            return "\(year)-\(month)-\(day)"
        }
        
        public mutating func update(with dayOfWeek: Day, andOption: Option) {
            
        }
    }
    
    private var date: Date
    
    init(year: Year, month: Month) {
        date = Date(year: year, month: month)
    }
    
    func day(_ on: Day, wich: Option) -> Date {
        
        return date
    }
}
