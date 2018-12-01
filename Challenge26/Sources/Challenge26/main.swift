import Foundation

func challenge26(filename: String) -> [String]? {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: filename)
    
    guard let contentDirectory = try? fm.contentsOfDirectory(at: directoryURL,
                                                             includingPropertiesForKeys: [],
                                                             options: .skipsHiddenFiles) else {
        return nil
    }
    let hours: TimeInterval = 60 * 60 * 48
    let validDate = Date() - hours
    
    return contentDirectory.filter { $0.pathExtension == "jpg" }.filter { url in
            let attributes = try! fm.attributesOfItem(atPath: url.path)
            let creationDate = attributes[FileAttributeKey.creationDate] as! Date
            return creationDate > validDate
        
        }.map { $0.lastPathComponent }
}


let result = challenge26(filename: "./fakeimages")

if let result = result {
    print(result)
} else {
    print("none")
}

