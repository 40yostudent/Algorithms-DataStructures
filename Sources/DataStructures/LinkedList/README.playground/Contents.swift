// TODO: keep only graphic and make it in markdown, then use playground functionality to include some examples
//: ![Linked List README page 1](Page1.png "Linked List README page 1")
//: ![Linked List README page 2](Page2.png "Linked List README page 2")
//: ![Linked List README page 3](Page3.png "Linked List README page 3")
//: ![Linked List README page 4](Page4.png "Linked List README page 4")
import LinkedList

let abcde = LinkedList<String>()
abcde.insert("a")
    .insert("b")
    .insert("c")
    .insert("d")
    .insert("e")
abcde

abcde.contains("e")
abcde.count

for letter in abcde {
    print(letter)
}

let newArray = [1, 2, 3, 4, 5]
for number in newArray {
    print(number)
}
