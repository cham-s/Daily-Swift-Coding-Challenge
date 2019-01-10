import Foundation
import UIKit

func challenge35(in directory: String) {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else {
        return
    }
    
    for file in files {
        guard file.pathExtension == "jpeg" || file.pathExtension == "jpg" else { continue }
        guard let image = UIImage(contentsOfFile: file.path) else { continue }
        guard let png = image.pngData() else { continue }
        let newFIlename = file.deletingPathExtension().appendingPathExtension("png")
        _ = try? png.write(to: newFIlename)
    }
}
