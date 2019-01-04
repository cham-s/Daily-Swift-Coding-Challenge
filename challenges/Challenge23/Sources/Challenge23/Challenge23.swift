func challenge23(subtract: Int, from: Int) -> Int {
    return (subtract..<from).count
}

func challenge23b(subtract: Int, from: Int) -> Int {
    return from + -subtract
}

func challenge23c(subtract: Int, from: Int) -> Int {
    return from + -1 * subtract
}

func challenge23d(subract: Int, from: Int) -> Int {
    return from + (~subract + 1)
}
