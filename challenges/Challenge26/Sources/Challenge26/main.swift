import Foundation

func challenge26(filename: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: filename)
    
    guard let contentDirectory = try? fm.contentsOfDirectory(
                at: directoryURL,
                includingPropertiesForKeys: [],
                options: .skipsHiddenFiles) else { return [] }
    
    let FourtyEightHours: TimeInterval = 60 * 60 * 48
    let validDate = Date() - FourtyEightHours
    
    return contentDirectory.filter { $0.pathExtension == "jpg" ||
                                     $0.pathExtension == "jpeg" }.filter {
            let attributes = try! fm.attributesOfItem(atPath: $0.path)
            let creationDate = attributes[FileAttributeKey.creationDate] as! Date
            return creationDate > validDate

        }.map { $0.lastPathComponent }
}


let result = challenge26(filename: "./fakeimages")
