extension Collection where Iterator.Element == Int {
    func challenge34() -> Double? {
        guard count > 0 else { return nil }
        let numbers = Array(self).sorted()
        let mean: Double
        let middle = count / 2
        
        if self.count % 2 == 0 {
            mean = (Double(numbers[middle - 1]) + Double(numbers[middle])) / 2.0
        } else {
            mean = Double(numbers[middle])
        }
        return mean
    }
}

