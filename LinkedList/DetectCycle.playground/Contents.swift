// LinkedList

/* detect a cycle
 Linked  list is a said to contain a cycle if any node is visited more than once while travesing the list
 for example in the following graph there is a cycle formed when a node 5 points back to node 3
 */

import UIKit


class Node {
    var data : Int
    var next : Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
func hasCycle(first : Node) -> Bool{
    
    var fast : Node? = first
    var slow : Node? = first
    
    while fast != nil && slow != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow?.data  == fast?.data {
            return true
        }
    }
        return false
    }
    let node5 = Node(5)
    let node4 = Node(4)
    let node3 = Node(3)
    let node2 = Node(2)
    let head = Node(1)
   
 
   
    
    head.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node5
    node5.next = node3
    
hasCycle(first: head)

