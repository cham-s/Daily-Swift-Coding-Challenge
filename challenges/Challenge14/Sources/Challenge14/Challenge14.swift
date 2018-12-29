import Foundation

func challenge14(_ number: Int) -> String {
    switch (number % 3 == 0,
            number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "Fizz Buzz"
    case (false, false):
        return "\(number)"
    }
}
