import Foundation
import ToolKit

func challenge28(directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let contentDirectory = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else {
        print("not found")
        return []
    }
    
    var executables = [String]()

    for url in contentDirectory {
        if url.hasDirectoryforPath { continue }
        if fm.isExecutableFile(atPath: url.path) {
            executables.append(url.lastPathComponent)
        }
    }
    
    return executables
}

print(challenge28(directory: "./folderTest"))
