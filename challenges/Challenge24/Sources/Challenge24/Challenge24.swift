import Foundation

//func printLastLines(from filename: String, last: Int) {
//    guard last > 0 else { return }
//    guard let content = try? String(contentsOfFile: filename) else { return }
//    let components = content.components(separatedBy: "\n").filter { !$0.isEmpty }
//
//        let printReverse = { (list: [String]) in
//            let reversed = list.reversed()
//            for index in reversed.indices {
//                print(reversed[index], terminator: "")
//                if (index != reversed.index(before: reversed.endIndex)) {
//                    print(", ", terminator: "")
//                }
//            }
//            print("")
//        }
//    if last > components.count {
//        printReverse(components)
//    } else {
//        let startIndex = components.count - last
//        let array = Array(components[startIndex...])
//        printReverse(array)
//    }
//}

// printLastLines(from: "./folder/names.txt", last: 100)

func challenge24(filename: String, last: Int) {
    guard let content = try? String(contentsOfFile: filename) else { return }
    
    let reversed = content.components(separatedBy: "\n")
        .filter { !$0.isEmpty }.reversed()
    
    let count = last > reversed.count ? reversed.count : last
    let creme = Array(reversed)[..<count].joined(separator: ", ")
    print(creme)
}



// challenge24(filename: "./folder/names.txt", last: 3)
