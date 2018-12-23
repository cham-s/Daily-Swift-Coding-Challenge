func challenge42<T: Numeric>(numbers: [T]) -> T {
    return numbers.reduce(0, +)
}
