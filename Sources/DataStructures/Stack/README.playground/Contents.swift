/*:
 ### Stack - Data Structure
 
 A possible implementation of the Stack data structure in Swift. As in a stack of coins, dishes or the "undo stack" found in many softwares, a stack is a pile of objects, not inspectable unless disassembling it. The position for insertion and deletion operations is predetermined with **Last In First Out** principle and the only element visible without altering a stack is the element on top of it.
 Only the methods described on Cormen's book are implemented, and the structure consume itself every time is traversed with a `for in` loop (thanks to its conformance to the `Sequence Protocol`), resulting in an empty Stack. The only non-mutating method is top(), which returns the value on top of the Stack.
 */
import Stack
/*:
 ### Usage:
 
 Initialize a new empty Stack specifying the Type of the elements contained, then use push() method to populate it...
 */
let newList = Stack<Int>()
newList.push(5, 4, 3, 2, 1, 0)
//: ...or pass some values and let type inference do its job.
let newList2 = Stack(-5, -4, -3, -2, -1)
/*:
 ### Union of 2 Sequences:
 
 The append() method can be used as a Union operation between 2 Sequence of the same Type. If the appended Sequence is a Stack, will be consumed during the operation, as intended.
 
_**Warning:**_
 Never append a Stack to itself, or bad thing will happen (infinite loop).
 */
newList.append(contentsOf: newList2)
newList2.isEmpty
/*:
 ### Expected Behavior:
 
 Any traversing operation will consume the Stack anbd result in an empty Stack.
 */
for element in newList {
    print(element)
}
newList.isEmpty
/*:
 ### Expected Behavior:
 
 Popping more than 1 element will only return the last element popped.
 */
newList2.push(0, 1, 2, 3, 4, 5)
newList2.pop()
newList2.pop(3)
