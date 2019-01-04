
func challenge44(_ input: Int) -> Int {
    guard input != 1 else { return 1 }
    
    var upperBound = (input / 2) + 1
    var lowerBound = 0
    
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }
    return lowerBound
}
