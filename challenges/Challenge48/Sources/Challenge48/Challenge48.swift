import Foundation

func hexColor(red: UInt8, green: UInt8, blue: UInt8) -> String {
    let pad: (UInt8) -> String = {
        let result = String($0, radix: 16).uppercased()
        return result.count > 1 ? result : "0\(result)"
    }
    return "#\(pad(red))\(pad(green))\(pad(blue))"
}
