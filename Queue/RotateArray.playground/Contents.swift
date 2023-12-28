/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 
 Shoot for correctness. Not performance.
 */

import UIKit

//MARK: - Rotate Right

func solutionQueueRight(A:[Int], K : Int) -> [Int] {
    var result = A
    
    for _ in 1...K {
        let last = result.last!
        result.insert(last, at: 0)
        result.remove(at: A.count)
    }
    return result
}

print(solutionQueueRight(A: [1,2,3,4,5], K: 3))



//MARK: - Rotate Left

func solutionQueueLeft(A:[Int],  K : Int) -> [Int]{
    
    var result = A
    
    
    for _ in 1...K {
        let first = result.first!
        result.append(first)
        result.remove(at: 0)
    }
    return result
}

print(solutionQueueLeft(A: [1,2,3,4,5], K: 3))
