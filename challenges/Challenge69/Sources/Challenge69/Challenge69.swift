struct Sieve {
    var limit = 0
    
    var primes: [Int] {
        guard limit > 2 else {
            return []
        }
        
        var primes: [Int] = []
        var numbers = (2...limit).map {  (number: $0, marked: false)  }
        var primeIndex = 0
        var numberIndex = 1
        
        while numbers[primeIndex].number != limit {
            guard !numbers[numberIndex].marked else {
                primeIndex += 1
                numberIndex = primeIndex + 1
                continue
            }
            primes.append(numbers[primeIndex].number)
            while numbers[numberIndex].number != limit {
                guard !numbers[numberIndex].marked else {
                    numberIndex += 1
                    continue
                }
                if numbers[numberIndex].number % numbers[primeIndex].number == 0 {
                    numbers[numberIndex].marked = true
                }
                numberIndex += 1
            }
            primeIndex += 1
            numberIndex = primeIndex + 1
        }
        
        return primes
    }
    
    init(_ limit: Int) {
        self.limit = limit
    }
}

