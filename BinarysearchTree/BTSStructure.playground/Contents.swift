import UIKit


import Foundation
import XCTest

/*
 ___ _                      ___                  _      _____
| _ |_)_ _  __ _ _ _ _  _  / __| ___ __ _ _ _ __| |_   |_   _| _ ___ ___
| _ \ | ' \/ _` | '_| || | \__ \/ -_) _` | '_/ _| ' \    | || '_/ -_) -_)
|___/_|_||_\__,_|_|  \_, | |___/\___\__,_|_| \__|_||_|   |_||_| \___\___|
                     |__/
 */




class Node {
    var key : Int = 0
    var left : Node?
    var right : Node?
    
    init(key: Int) {
        self.key = key
    }
    
    var min : Node {
        if left == min {
            return self
        } else {
            return left!.min
        }
    }
}


let bts = BTS()

bts.insert(key: 5)
bts.insert(key: 3)
bts.insert(key: 2)
bts.insert(key: 4)
bts.insert(key: 7)
bts.insert(key: 6)
bts.insert(key: 8)


bts.prettyPrint()


class BTS {
    var root : Node?
    
    
    func insert(key: Int) {
    }
    
    
    func insertItem(_ node : Node?, key : Int) -> Node {
        guard let node = node else  {
            let node = Node(key)
            return node
        }
        
        if node > node.key {
            node.right = insertItem(node.right, key)
        }
        if node < node.key {
            node.left = insertItem(node.left, key)
        }
        return Node(key)
    }
    func find(key:Int) -> Int? {
       guard let root = root else { return nil }
        guard let node = find(root, key) else {return nil }
        
        return node.key
    }
    
   private  func find(_ node : Node?, key : Int) -> Node? {
       guard let node = node  else { return nil }
       
       if node.key == key {
           return node
       } else if key < node.key {
           return find(node.left, key)
       } else if key > node.key {
           return find(node.right, key)
       }
       return nil
        
    }
    func prettyPrint() {
        // Hard code print for tree depth = 3
        let rootLeftKey = root?.left == nil ? 0 : root?.left?.key
        let rootRightKey = root?.right == nil ? 0 : root?.right?.key
        
        var rootLeftLeftKey = 0
        var rootLeftRightKey = 0
        
        if root?.left != nil {
            rootLeftLeftKey = root?.left?.left == nil ? 0 : root?.left?.left?.key as! Int
            rootLeftRightKey = root?.left?.right == nil ? 0 : root?.left?.right?.key as! Int
        }
        
        var rootRightLeftKey = 0
        var rootRightRightKey = 0
        
        if root?.right != nil {
            rootRightLeftKey = root?.right?.left == nil ? 0 : root?.right?.left?.key as! Int
            rootRightRightKey = root?.right?.right == nil ? 0 : root?.right?.right?.key as! Int
        }
     
        let str = """
                       \(root!.key)
                    /    \\
                   \(rootLeftKey!)      \(rootRightKey!)
                  / \\    /  \\
                 \(rootLeftLeftKey)   \(rootLeftRightKey)  \(rootRightLeftKey)    \(rootRightRightKey)
        """
        
        print(str)
    }
}
