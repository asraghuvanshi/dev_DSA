class Node<T> {
    var value: T
    var next: Node?
    init(value: T) {
        self.value = value
        self.next = nil
    }
}

class LinkedList<T> {
    private var head: Node<T>?
    
    // append the list
    func append(_ value: T) {
        let newNode = Node(value: value)
        if head == nil {
            head = newNode
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }

            current?.next = newNode
        }
    }

       // Display the list
    func display() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " -> ")
            current = current?.next
        }
        print("nil")
    }

}


let list = LinkedList<Int>()
list.append(10)
list.append(20)
list.append(30)

list.display() 