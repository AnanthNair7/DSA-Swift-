import UIKit

class Node {
    var data : Int
    var next : Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
    let node3 = Node(3)
    let node2 = Node(2,node3)
    let node1 = Node(1,node2)


func printLinkedList(_ head : Node?){
    if head == nil {
        return
    }
    var node = head
        print(node!.data)
        
        while node?.next != nil{
            print(node!.next!.data)
            node = node?.next
        }
}
printLinkedList(node1)
