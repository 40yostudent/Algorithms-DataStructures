import Queue

let intQ = Queue<Int>()
intQ.enqueue(0)
    .enqueue(1)
    .enqueue(2)
    .enqueue(3)
    .enqueue(4)
    .enqueue(5)

for key in intQ { // infinite loop
    print(key)
}
