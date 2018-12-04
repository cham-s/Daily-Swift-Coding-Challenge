import Foundation

func challenge28(filename: String, message: String) throws {
    do {
        var content = (try? String(contentsOfFile: filename)) ?? ""
        content += "\(message) \(Date())\n"
        do {
            try content.write(toFile: filename, atomically: true, encoding: .utf8)
        }
    }
}

do {
    try challenge28(filename: "./log", message: "error 408")
} catch {
    print(error)
}

