import Foundation

public extension DateFormatter {
    func format(withLocal: String, andFormat: String) {
        self.locale = Locale(identifier: withLocal)
        self.dateFormat = andFormat
    }
}

enum DescriptorError: Error {
    case notValidDescriptor(String)
    case invalidDayComponent(Int)
    case invalidDate(String)
}


struct Meetup {
    typealias Day = Int
    typealias Month = Int
    typealias Year = Int
    typealias Option = String
    
    enum Descriptor {
        case ordinal(Int)
        case last
        case teenth(ClosedRange<Int>)
        
        init (_ descriptor: String) throws {
            switch descriptor {
            case "1st", "2nd", "3rd", "4th":
                self = .ordinal(Int(String(descriptor.first!))! - 1)
            case "last":
                self = .last
            case "teenth":
                self = .teenth(12...18)
            default:
                throw DescriptorError.notValidDescriptor(descriptor)
            }
        }
        
        func date(for day: DayOfWeek, date: Date) -> Date {
            let calendar = Calendar.current
            
            
            switch self {
            case .ordinal(let nthDay):
                let advanceWeek = calendar.date(byAdding: .weekOfMonth,
                                                value: nthDay,
                                                to: date)
                for i in 0..<7 {
                    let currentDay = calendar.date(byAdding: .day, value: i, to: date)!
                    if calendar.component(.weekday, from: currentDay) == day.rawValue {
                        currentDay
                    }
                }
            case .last:
                
            default:
                <#code#>
            }
        }
    }
    
    enum DayOfWeek: Int {
        case sunday = 1
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
        
        init (day: Day) throws {
            guard let dayOfweek = DayOfWeek(rawValue: day) else {
                throw DescriptorError.invalidDayComponent(day)
            }
            self = dayOfweek
        }
    }
    
    public struct MeetUpDate: CustomStringConvertible {
        public var year: Year = 0
        public var month: Month = 0
        public var day: Day = 0
        
        init(year: Year, month: Month) {
            self.year = year
            self.month = month
        }
        
        public var description: String {
            return "\(year)-\(month)-\(day)"
        }
        
        public mutating func update(with dayOfWeek: Day, andOption: Option) throws {
            let descriptor = try Descriptor(andOption)
            let day = try DayOfWeek(day: dayOfWeek)
            let dateFormatter = DateFormatter()
            dateFormatter.format(withLocal: "en_US_POSIX", andFormat: "yyyy-MM")
            
            let dateStr = "\(year)-\(month)"
            guard let date = dateFormatter.date(from: dateStr) else {
                throw DescriptorError.invalidDate(dateStr)
            }
        }
    }
    
    private var date: MeetUpDate
    
    init(year: Year, month: Month) {
        date = MeetUpDate(year: year, month: month)
    }
    
    //    func day(_ on: Day, wich: Option) -> MeetUpDate {
    //
    //        return MeetUpDate
    //    }
}

