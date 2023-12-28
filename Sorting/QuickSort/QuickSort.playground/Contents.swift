import UIKit

class QuickSort {
    func qSort(array : [Int]) -> [Int] {
        var arr = array
       var lessValue = [Int]()
        var equalValue = [Int]()
        var greaterValue = [Int]()
        
        
        if arr.count > 1 {
            let pivotVal = arr[0]
            
            for i in arr {
                if i < pivotVal {
                    lessValue.append(i)
                }
                if i > pivotVal {
                    greaterValue.append(i)
                }
                if i == pivotVal {
                    equalValue.append(i)
                }
            }
            return (qSort(array: lessValue) + equalValue + qSort(array: greaterValue))
        } else {
            return arr
        }
        
    }
}

let qS =    QuickSort()
print(qS.qSort(array: [15,3,9,8,5,2,7,1,6]))
