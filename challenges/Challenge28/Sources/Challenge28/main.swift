import Foundation

@available(OSX 10.11, *)
func findDuplicate(in filename: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: filename)
    
    guard let files = fm.enumerator(at: directoryURL,
                                    includingPropertiesForKeys: nil) else {
                                        return []
    }
    
    var seen = Set<String>()
    var duplicates: [String] = []
    
    
    for case let file as URL in files {
        if file.hasDirectoryPath {
            continue
        }
        if seen.contains(file.lastPathComponent) {
            duplicates.append(file.lastPathComponent)
        }
        seen.insert(file.lastPathComponent)
    }
    return duplicates
}
