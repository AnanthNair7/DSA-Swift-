// LinkedList
// Find the merge point of two list
/*
 Given pointer to head node of 2 Linked List that merge together at the same point , find the node where the two list merge , the merge point s where
 both the list points to the same code , i.e they reference the same memory location , it is guarenteed that the two head nodes will be different and neither will be nill , if the list share a common node , return that node data value
 
 NOTE: After the mergeing point , both list will share the same node pointers
 
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


//MARK: - Length Method
func lenght(_ head : Node?) -> Int {
    if head == nil {
        return 0
    }
    var len = 0
    var current = head
    while current != nil {
        len = len + 1
        current = current?.next
    }
    
    return len
}

//MARK: - Print LinkedList

func printLinkedList(_ head : Node?){
    if head == nil {
        return
    }
    
    var result = [Int]()
    var node = head
    result.append(node!.data)
    
    while node?.next != nil {
        result.append(node!.next!.data)
        node = node?.next
    }
    print(result)
    
}
 //MARK: - Find Merge
func mergeBruthForce(headA : Node?, headB: Node?) -> Int? {
    let m = lenght(headA)
    let n = lenght(headB)
    
    var currentA = headA
    for _ in 0...m-1 {
        var currentB = headB
            for _ in 0...n-1{
                let A = currentA?.data
                let B = currentB?.data
                print("A:\(A ?? 0) B: \(B ?? 0)")
                      if A == B {
                    return A
                }
                currentB = currentB?.next
            }
        currentA = currentA?.next
        
    }
    
    
    return nil
}

// 1,2,3,4,5,6
let node6 = Node(6)
let node5 = Node(5,node6)
let node4 = Node(4,node5)
let node3 = Node(3,node4)
let node2 = Node(2,node3)
let node1 = Node(1,node2)


// 10 ,12,4,5,6

let node11 = Node(11,node4)
let node10 = Node(10,node11)

printLinkedList(node1)
printLinkedList(node10)

mergeBruthForce(headA: node1, headB: node10)
