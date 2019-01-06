import Foundation

func log(message: String, to filename: String) {
    var logFile = (try? String(contentsOfFile: filename)) ?? ""
    logFile.append("\(Date()): \(message)")
    _ = try? logFile.write(toFile: filename,
                           atomically: true,
                           encoding: .utf8)
}

log(message: "error", to: "./errors")

