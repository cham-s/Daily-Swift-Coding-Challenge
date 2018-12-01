import Foundation

func challenge28(directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    guard let files = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else {
        return []
    }
    
    var seen = [String]()
    var duplicates = [String]()
    
    for case let url as URL in files {
        if #available(OSX 10.11, *) {
            if url.hasDirectoryPath == true {
                continue
            }
        } else {
            var isDirectory: ObjCBool = false
            let _ = fm.fileExists(atPath: url.path, isDirectory: &isDirectory)
            if isDirectory.boolValue == true {
                continue
            }
        }
        if seen.contains(url.lastPathComponent) {
            if !duplicates.contains(url.lastPathComponent){
                duplicates.append(url.lastPathComponent)
            }
        }
      seen.append(url.lastPathComponent)
    }
    return duplicates
}

let result = challenge28(directory: "./test")

print(result)
