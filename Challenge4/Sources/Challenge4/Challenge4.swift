import Foundation


extension String {
    func challenge4(_ compare: String) -> Bool {
        let lowercased = self.lowercased()
        return lowercased.range(of: compare) != nil
    }
}
