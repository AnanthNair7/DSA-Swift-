import UIKit

//func logarithmicTime(with N : Int) -> Int {
//    var n = N
//    var result = 0
//    while n > 0 {
//       n =  n / 2
//       print(n)
//       result = result + 1
//    }
//
//
//    return result
//}
//logarithmicTime(with: 128)
func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
        
    while left < right {
        (s[left], s[right]) = (s[right], s[left])
        left += 1
        right -= 1
    }
}
reverseString(jkjk)
