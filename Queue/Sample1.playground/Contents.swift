// Queue
//First in First out
// enqueue O(1)
// dequeue O(n)


import UIKit



class Queue<T> {
     private var array : [T] = []
    
    func enqueue(_ item  : T){
        array.append(item)
    }
    
    func dequeue() -> T {
        if isEmpty(){
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var peek : T {
        array.last
    }
     
    var count : T {
        array.count
    }
    
    var isEmpty :T {
        array.isEmpty
    }
}


