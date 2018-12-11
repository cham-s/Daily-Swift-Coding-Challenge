import Foundation
import ToolKit

func challenge28(directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let contentDirectory = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else {
        print("not found")
        return []
    }
    
    let executables = contentDirectory.filter { !$0.hasDirectoryforPath &&
                                        fm.isExecutableFile(atPath: $0.path) }
                                        .map {$0.lastPathComponent}
    return executables
}

print(challenge28(directory: "./folderTest"))
