import Foundation

extension Double {
    mutating func round(toTheNearest number: Double) -> Double {
        return Darwin.round(self * number) / number
    }
}


class SpaceAge {
    let earthInSecond: TimeInterval = 31557600
    var seconds: TimeInterval
    
    lazy var onEarth: TimeInterval = {
        var value = seconds / earthInSecond
        return value.round(toTheNearest: 100.0)
    }()
    lazy var onMercury: TimeInterval = {
        return convert(age: 0.2408467)
    }()
    lazy var onVenus: TimeInterval = {
        return convert(age: 0.61519726)
    }()
    lazy var onMars: TimeInterval = {
        return  convert(age: 1.8808158)
    }()
    lazy var onJupiter: TimeInterval = {
        return convert(age: 11.862615)
    }()
    lazy var onSaturn: TimeInterval = {
        return convert(age: 29.447498)
    }()
    lazy var onUranus: TimeInterval = {
        return convert(age: 84.016846)
    }()
    lazy var onNeptune: TimeInterval = {
        return convert(age: 164.79132)
    }()
    
    init(_ age: TimeInterval) {
        self.seconds = age
    }
    
    private func convert(age: TimeInterval) -> TimeInterval {
        var value =  onEarth / age
        return value.round(toTheNearest: 100.0)
    }
}
