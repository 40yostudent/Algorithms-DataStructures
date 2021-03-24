extension Queue: CustomStringConvertible where Key: CustomStringConvertible {
    public var description: String {
        if let string = first?.description {
            return "First in Queue: " + string
        } else {
            return "Empty Queue"
        }
    }
}
