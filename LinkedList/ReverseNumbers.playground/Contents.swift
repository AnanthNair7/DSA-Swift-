// Reverse A number
// Two pointer approach


class solution{
    func reverse(_ array : inout [Int]) {
        var left = 0
        var right = array.count-1
        
        while left < right {
            (array[left], array[right]) = (array[right], array[left])
            left = left + 1
            right = right - 1
        }
    }
}

let sl = solution()
var  ray = [2,6,7,8,9,0]
sl.reverse(&ray)
print(ray)

