
// Stack
/*
 last in first out
 push and pop in O(1) operations
 
 we can create stack in both class and struct
 */

import UIKit

//MARK: - Class
class StackClass<T> {
    
   private var array : [T] = []
    
    
    func push(_ item : T){
        array.append(item)
    }
    
    func pop() -> T{
        array.popLast()
    }
    
    func peek() -> T{
        array.last
    }
    
    var isempty :  Bool {
        array.isEmpty
    }
    
    var count : Int {
        array.count
    }
    
}


//MARK: - Struct


struct StackStruct<T> {
    
    
    fileprivate var array = [T]()
    
    
    mutating func push(_ item : T){
        array.append(item)
    }
    
    
    mutating func pop() -> T {
        array.popLast()
    }
    
    var peek : T {
        array.last
    }
    var isempty :  Bool {
        array.isEmpty
    }
    
    var count : Int {
        array.count
    }
}
