import Foundation
class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T) {
        self.value = value
        self.next = nil
    }
}

class LinkedList<T: Equatable> {
    var head: Node<T>?
    
    func append(value: T) {
        let newNode = Node(value: value)
        
        if let headNode = head {
            var currentNode = headNode
            while let nextNode = currentNode.next {
                currentNode = nextNode
            }
            currentNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    // Print all elements in the list
    func printList() {
        var currentNode = head
        while let node = currentNode {
            print(node.value, terminator: " -> ")
            currentNode = node.next
        }
        print("nil")
    }
    
    // Insert a value at the beginning of the list
    func prepend(value: T) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    // Remove the first node from the list
    func removeFirst() {
        head = head?.next
    }
    
    // Remove the last node from the list
    func removeLast() {
        guard var currentNode = head else { return }
        
        if currentNode.next == nil {
            head = nil
            return
        }
        
        while let nextNode = currentNode.next, nextNode.next != nil {
            currentNode = nextNode
        }
        currentNode.next = nil
    }
    
    // Search for a value in the list
    func contains(value: T) -> Bool {
        var currentNode = head
        while let node = currentNode {
            if node.value == value {
                return true
            }
            currentNode = node.next
        }
        return false
    }

    func resetList() -> Bool {
        return true
    }
}


let list = LinkedList<Int>()
list.append(value: 10)
list.append(value: 20)
list.append(value: 30)
list.printList()

list.prepend(value: 5)
list.printList()

list.removeFirst()
list.printList()

list.removeLast()
list.printList()

print(list.contains(value: 20))
print(list.contains(value: 100))

