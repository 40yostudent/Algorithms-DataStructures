extension LinkedList: CustomStringConvertible where Key: CustomStringConvertible {
    public var description: String {
        var string = "head"
        for key in self {
            string += " -> "
            string += key.description
        }
        return string == "head" ? "Empty List" : string
    }
}
