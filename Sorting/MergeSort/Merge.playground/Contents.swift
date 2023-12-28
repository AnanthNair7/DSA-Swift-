import UIKit


    func mergeSort(leftArray : [Int], rightArray : [Int]) -> [Int] {
       
        var sortedArray : [Int] = []
        var left = leftArray
        var right = rightArray
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                sortedArray.append(left.removeFirst())
            } else {
                sortedArray.append(right.removeFirst())
            }
        }
        return sortedArray + left + right
    }


func sort(array :[Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let leftArray = Array(array[0..<array.count / 2 ])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return mergeSort(leftArray: sort(array: leftArray), rightArray: sort(array: rightArray))
}
print(sort(array: [38,27,43,3,9,82,10]))
