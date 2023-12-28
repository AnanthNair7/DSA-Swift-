
// Stack
// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */


import UIKit

func solution(_ text : String) -> String {
    var chars = Array(text)
    //MARK: - Creating a stack
    var result  = [String]()
    
    // push a chars
    for c in chars{
        result.append(String(c))
    }
  
    
        // pop a chars
    for i in 0..<result.count {
        chars[i] = Character(result.popLast()!)
    }
    return String(chars)
    
}

solution("abc") // cba
solution("Ananth Nair")
