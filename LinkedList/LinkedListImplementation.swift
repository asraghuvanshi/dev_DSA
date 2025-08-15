import Foundation

class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
        self.next = nil
    }
}


class LinkedList {
    private var head:Node?

    func append(_ value: Int) {

        let newNode = Node(value: value)

        if head == nil {
            head = newNode
            return
        }

        var current = head

        while current?.next != nil {
            current = current?.next
        }

        current?.next = newNode
    }


func printNode() {
    var current = head
    while current != nil {
        let nextText = (current?.next == nil) ? "nil" : "next"
        print("[\(current!.value) | \(nextText)]", terminator: "")
        if current?.next != nil {
            print(" → ", terminator: "")
        }
        current = current?.next
    }
}

}
let list = LinkedList()
list.append(10) 
list.append(20)  
list.append(30) 

list.printNode()

// class Node<T> {
//     var value: T
//     var next : Node?
//     init(value: T) {
//         self.value = value
//     } 
// }

// class LinkedList<T> {
//     private var head: Node<T>?

//     // Add a new element at the end
//     func append(_ value: T) {
//         let newNode = Node(value: value)

//         // If list is empty
//         if head == nil {
//             head = newNode
//             return
//         }

//         // Otherwise, find the last node
//         var current = head
//         while current?.next != nil {
//             current = current?.next
//         }
//         current?.next = newNode
//     }

//     // Add a new element at the start
//     func prepend(_ value: T) {
//         let newNode = Node(value: value)
//         newNode.next = head
//         head = newNode
// ''    }

//     // Print all values
//     func printList() {
//         var current = head
//         while current != nil {
//             print(current!.value)
//             current = current?.next
//         }
//     }
// }





// let list = LinkedList<Int>()
// list.append(10)
// list.append(20)
// list.prepend(5)
// list.append(30)

// list.printList()
