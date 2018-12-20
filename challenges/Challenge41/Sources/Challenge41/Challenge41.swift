import Foundation

func challenge41(numbers: [Int]) -> ClosedRange<Int>? {
    guard numbers.count > 0 else { return nil }
    var highestSum = 0
    var currentSum = 0
    var currentLowerBound: Int? = nil
    var bestLowerBound: Int? = nil
    var range: ClosedRange<Int>? = nil
    
    for (index, number) in numbers.enumerated() {
        if number > 0 {
            if currentLowerBound == nil {
                currentLowerBound = index
            }
            currentSum += number
        } else {
            if currentSum > highestSum {
                let upper = index == 0 ? index : index - 1
                bestLowerBound = currentLowerBound
                range = bestLowerBound!...upper
                highestSum = currentSum
                currentLowerBound = nil
                currentSum = 0
            }
        }
    }
    return range
}
