import Foundation

extension String {
    func challenge4(_ contains: String) -> Bool {
        return self.lowercased().range(of: contains.lowercased()) != nil
    }
}
