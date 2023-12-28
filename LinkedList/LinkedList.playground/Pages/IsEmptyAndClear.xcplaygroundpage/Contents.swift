//LinkedList
// isEmpty and clear



class Node {
    var data : Int
    var next : Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}


class LinkedList {
    private var head : Node?
    
    //MARK: - ADDFIRST
    func addFirst(_ data: Int){
        let newNode = Node(data)
        newNode.next = head
        head = newNode
        
    }
    //MARK: - GETFIRST
    func getFirst() -> Int?{
        if head == nil {
            return nil
        }
        return head!.data
    }
    
    //MARK: - ADDLAST
    func addBack(_ data : Int) {
        let newNode = Node(data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var node = head!
        while(node.next != nil){
            node = node.next!
        }
        node.next = newNode
    }
    
    //MARK: - GETLAST
    
    func getLast() -> Int? {
        
        if head == nil{
            return nil
        }
        
        var node = head!
        while(node.next != nil){
            node = node.next!
        }
        return node.data
    }
    
    //MARK: - Insert
    
    func insert(position: Int, data : Int){
        if position == 0 {
            addFirst(data)
            return
        }
        
        let newNode = Node(data)
        var currentNode = head
        
        for _ in 0..<position - 1  {
            currentNode = currentNode?.next
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    
    //MARK: - DELETE FIRST
    
    func deleteFirst(){
        head = head?.next
    }
    
    //MARK: - DELETE LAST
    
    func deleteLast(){
        var nextNode = head
        var previousNode : Node?
        
        while(nextNode?.next != nil){
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        
        previousNode?.next = nil
    }
    
    //MARK: - DELETE AT POSTITON
    
    func deletatPosition(pos : Int){
        if pos == 0 {
            deleteFirst()
            return
        }
        
        var nextNode = head
        var previousNode : Node?
        
        for _ in 0..<pos {
           previousNode =  nextNode
            nextNode = nextNode?.next
        }
        
        previousNode?.next = nextNode?.next
    }
    
    //MARK: - IS EMPTY
    
    var isEmpty : Bool{
       
            return head == nil
        
            
    }
    
    //MARK: - clear
    
    func clear(){
        head = nil
    }
    
    //MARK: - PRINT LINKEDLIST
    
    func printLinkedList(){
        if head == nil { return }
        
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil{
            result.append(node!.next!.data)
            node = node?.next
        }
        print(result)
    }
}

let linkedlist = LinkedList()
linkedlist.addFirst(3)
linkedlist.addFirst(2)
linkedlist.addFirst(1)
linkedlist.printLinkedList()

linkedlist.addFirst(7)
linkedlist.printLinkedList()

linkedlist.addBack(10)
linkedlist.printLinkedList()

linkedlist.getFirst()
linkedlist.getLast()

linkedlist.insert(position: 4, data: 5)
linkedlist.printLinkedList()


linkedlist.deleteFirst()
linkedlist.printLinkedList()


linkedlist.deleteLast()
linkedlist.printLinkedList()


linkedlist.deletatPosition(pos: 2)
linkedlist.printLinkedList()


