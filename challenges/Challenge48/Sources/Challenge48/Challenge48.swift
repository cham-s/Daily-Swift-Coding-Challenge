import Foundation

func hexColor(red: UInt8, green: UInt8, blue: UInt8) -> String {
    let red = String(red, radix: 16).uppercased()
    let green = String(green, radix: 16).uppercased()
    let blue = String(blue, radix: 16).uppercased()
    return "#\(red)\(green)\(blue)"
}
