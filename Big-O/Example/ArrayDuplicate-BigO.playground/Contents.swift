import UIKit

func arrayDuplicate(with array1:[Int], with array2:[Int]) {
    
    for a in 0..<array1.count{
        for b in 0..<array2.count{
            if array1[a] == array2[b]{
                    print(array1[1])
            }
        }
        
    }
 
    
}
arrayDuplicate(with: [2,7,9], with: [3,4,7])
