import Foundation

func challenge24(filename: String, last: Int) -> [String]? {
    guard let content = try? String(contentsOfFile: filename) else { return nil }
    
    let reversed = content.components(separatedBy: "\n").reversed().map { String($0) }
    let lineCount = last < reversed.count ? last : reversed.count
    return Array(reversed[..<lineCount])
}
