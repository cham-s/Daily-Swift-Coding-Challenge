import Foundation

extension URL {
    var isDirectory: Bool {
        let fm = FileManager.default
        var isDir: ObjCBool = false
        fm.fileExists(atPath: self.path, isDirectory: &isDir)
        
        return isDir.boolValue
    }
}

func challenge28(directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let contentDirectory = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else {
        print("not found")
        return []
    }
    
    var executables = [String]()

    for url in contentDirectory {
        if #available(OSX 10.11, *) {
            if url.hasDirectoryPath {
                continue
            }
        } else {
            if url.isDirectory {
                continue
            }
        }
        if fm.isExecutableFile(atPath: url.path) {
            executables.append(url.lastPathComponent)
        }
    }
    
    return executables
}

print(challenge28(directory: "./folderTest"))
