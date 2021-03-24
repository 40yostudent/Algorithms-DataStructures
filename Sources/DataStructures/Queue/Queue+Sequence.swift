extension Queue: Sequence, IteratorProtocol {
    public typealias Element = Key
    
    __consuming public func next() -> Element? {
        guard !self.isEmpty else {
            return nil
        }
        defer {
            self.dequeue()
        }
        return self.first
    }
}
