import Foundation

func challenge28(filename: String, message: String) throws {
    let fm = FileManager.default
    if fm.fileExists(atPath: filename) {
        let content = try? String(contentsOfFile: filename)
        if var content = content {
            content += "\(message) \(Date())\n"
            do {
               try content.write(toFile: filename, atomically: true, encoding: .utf8)
            }
        }
    } else {
        do {
            let log = "\(message) \(Date())\n"
            fm.createFile(atPath: filename, contents: nil, attributes: nil)
            try log.write(toFile: filename, atomically: true, encoding: .utf8)
        }
    }
}


do {
    try challenge28(filename: "./log", message: "error 408")
} catch {
    print(error)
}

