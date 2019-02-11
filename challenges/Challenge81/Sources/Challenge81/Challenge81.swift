enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

class CircularBuffer<T> {
    
    private struct Index {
        var last = 0
        var oldest = 0
        
        mutating public func reset() {
            last = 0
            oldest = 0
        }
    }
    
    private var _buffer: ContiguousArray<T> = []
    private var _capacity: Int
    private var _used = 0
    private var _indices = Index()
    private var _buffuerIsFull: Bool { return _used == _capacity }
    private var _bufferIsEmpty: Bool { return _used == 0 }
    
    init(capacity: Int) {
        _buffer.reserveCapacity(capacity)
        _capacity = capacity
    }
    
    public func write(_ data: T) throws {
        guard _buffuerIsFull == false else {
            throw CircularBufferError.bufferFull
        }
        
        let nextIndex = (_indices.last) % _capacity
        _buffer[nextIndex] = data
        _indices.last += 1
        _used += 1
    }
    
    public func read() throws -> T {
        guard _bufferIsEmpty == false else {
            throw CircularBufferError.bufferFull
        }
        
        let data = _buffer[_indices.oldest]
        _indices.oldest += 1
        return data
    }
    
    public func clear() {
        _indices.reset()
        _used = 0
    }
    
    public func overwrite(_ withData: T)  {
        _buffer[_indices.oldest] = withData
        _indices.oldest += 1
    }
}
