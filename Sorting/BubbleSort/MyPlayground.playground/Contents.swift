import UIKit

class Sorting {
    func bubblesort(array : [Int]) -> [Int] {
        var arr = array
        var n = arr.count
        
        for i in 0..<n-1 {
            for j in 0..<n-i-1{
                if arr[j] > arr[j+1]{
                    let temp = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = temp
                }
            }
        }
        return arr
    }
}

let bb = Sorting()
print(bb.bubblesort(array: [5,4,3,2,1]))
