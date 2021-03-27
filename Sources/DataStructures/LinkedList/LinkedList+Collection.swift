extension LinkedList: BidirectionalCollection {
    
    public typealias Index = Int
    
    public var startIndex: Int {
        first.index
    }
    
    public var endIndex: Int {
        head.index
    }
    
    public func index(after i: Index) -> Index {
        i + 1
    }
    
    public func index(before i: Index) -> Index {
        i - 1
    }
    
    public subscript(position: Index) -> Key {
        guard position < head.index else {
            preconditionFailure("Index out of range")
        }
        var node = head
        while node.index != position {
            node = node.next
        }
        return node.key!
    }
    
    public subscript(bounds: Range<Index>) -> Slice<LinkedList<Key>> {
        guard bounds.lowerBound >= startIndex && bounds.upperBound < endIndex else {
            preconditionFailure("Index out of range")
        }
        return Slice(base: self, bounds: bounds)
    }
    
}
