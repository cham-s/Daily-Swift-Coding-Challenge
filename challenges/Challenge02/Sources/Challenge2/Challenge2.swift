import Foundation

func challenge2(input: String) -> Bool {
    return String(input.reversed()).lowercased() == input.lowercased()
}
