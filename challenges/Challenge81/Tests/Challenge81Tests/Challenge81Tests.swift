import XCTest
@testable import Challenge81

final class Challenge81Tests: XCTestCase {
    func testReadEmptyBufferThrowsBufferEmptyException() {
        let buffer = CircularBuffer<Int>(capacity: 1)
        
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
    }
    
    func testWriteAndReadBackOneItem() {
        let buffer = CircularBuffer<Int>(capacity: 1)
        try? buffer.write(1)
        XCTAssertEqual(try? buffer.read(), 1)
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
    }
    
    func testWriteAndReadBackMultipleItems() {
        let buffer = CircularBuffer<Int>(capacity: 2)
        try? buffer.write(1)
        try? buffer.write(2)
        XCTAssertEqual(try? buffer.read(), 1)
        XCTAssertEqual(try? buffer.read(), 2)
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
    }
    
    func testClearingBuffer() {
        let buffer = CircularBuffer<Int>(capacity: 3)
        (1...3).forEach {
            try? buffer.write($0)
        }
        buffer.clear()
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
        try? buffer.write(1)
        try? buffer.write(2)
        XCTAssertEqual(try? buffer.read(), 1)
        try? buffer.write(3)
        XCTAssertEqual(try? buffer.read(), 2)
    }
    
    func testAlternateWriteAndRead() {
        let buffer = CircularBuffer<Int>(capacity: 2)
        try? buffer.write(1)
        XCTAssertEqual(try? buffer.read(), 1)
        try? buffer.write(2)
        XCTAssertEqual(try? buffer.read(), 2)
    }
    
    func testReadsBackOldestItem() {
        let buffer = CircularBuffer<Int>(capacity: 3)
        try? buffer.write(1)
        try? buffer.write(2)
        XCTAssertEqual(try? buffer.read(), 1)
        try? buffer.write(3)
        XCTAssertEqual(try? buffer.read(), 2)
        XCTAssertEqual(try? buffer.read(), 3)
    }
    
    func testWritingToAFullBufferThrowsAnException() {
        let buffer = CircularBuffer<String>(capacity: 2)
        try? buffer.write("1")
        try? buffer.write("2")
        XCTAssertThrowsError(try buffer.write("A")) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferFull)
        }
    }
    
    func testOverwritingOldestItemInAFullBuffer() {
        let buffer = CircularBuffer<String>(capacity: 2)
        try? buffer.write("1")
        try? buffer.write("2")
        buffer.overwrite("A")
        XCTAssertEqual(try? buffer.read(), "2")
        XCTAssertEqual(try? buffer.read(), "A")
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
    }
    
    func testForcedWritesToNonFullBufferShouldBehaveLikeWrites() {
        let buffer = CircularBuffer<String>(capacity: 2)
        buffer.overwrite("1")
        buffer.overwrite("2")
        XCTAssertEqual(try? buffer.read(), "1")
        XCTAssertEqual(try? buffer.read(), "2")
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
    }
    
    func testAlternateReadAndWriteIntoBufferOverflow() {
        let buffer = CircularBuffer<Int>(capacity: 5)
        (1...3).forEach { try? buffer.write($0) }
        _ = try? buffer.read()
        _ = try? buffer.read()
        _ = try? buffer.write(4)
        _ = try? buffer.read()
        (5...8).forEach { try? buffer.write($0) }
        buffer.overwrite(9)
        buffer.overwrite(10)
        (6...8).forEach {
            XCTAssertEqual(try? buffer.read(), $0)
        }
        XCTAssertEqual(try? buffer.read(), 9)
        XCTAssertEqual(try? buffer.read(), 10)
        XCTAssertThrowsError(try buffer.read()) { error in
            XCTAssertEqual(error as? CircularBufferError, .bufferEmpty)
        }
    }

    static let allTests = [
        ("testReadEmptyBufferThrowsBufferEmptyException", testReadEmptyBufferThrowsBufferEmptyException),
        ("testWriteAndReadBackOneItem", testWriteAndReadBackOneItem),
        ("testWriteAndReadBackMultipleItems", testWriteAndReadBackMultipleItems),
        ("testClearingBuffer", testClearingBuffer),
        ("testAlternateWriteAndRead", testAlternateWriteAndRead),
        ("testReadsBackOldestItem", testReadsBackOldestItem),
        ("testWritingToAFullBufferThrowsAnException", testWritingToAFullBufferThrowsAnException),
        ("testOverwritingOldestItemInAFullBuffer", testOverwritingOldestItemInAFullBuffer),
        ("testForcedWritesToNonFullBufferShouldBehaveLikeWrites", testForcedWritesToNonFullBufferShouldBehaveLikeWrites),
        ("testAlternateReadAndWriteIntoBufferOverflow", testAlternateReadAndWriteIntoBufferOverflow),

    ]
}
