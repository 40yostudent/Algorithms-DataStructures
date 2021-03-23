extension Stack: CustomStringConvertible where Key: CustomStringConvertible {
    public var description: String {
        if let string = top?.description {
            return "Top of the Stack: " + string
        } else {
            return "Empty Stack"
        }
    }
}
