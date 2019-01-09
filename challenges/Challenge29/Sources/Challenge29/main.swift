import Foundation

@available(OSX 10.11, *)
func findExec(from filename: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: filename)
    
    guard let files = try? fm.contentsOfDirectory(at: directoryURL,
                                                  includingPropertiesForKeys: nil,
                                                  options: []) else { return [] }
    return files.filter {
        fm.isExecutableFile(atPath: $0.path) && !$0.hasDirectoryPath
        }.map { $0.lastPathComponent }
}


if #available(OSX 10.11, *) {
    print(findExec(from: "./folder"))
} else {
    // Fallback on earlier versions
}

