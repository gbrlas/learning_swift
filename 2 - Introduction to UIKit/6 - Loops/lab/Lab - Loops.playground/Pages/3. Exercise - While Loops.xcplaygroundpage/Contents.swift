import Foundation
/*:
 ## Exercise - While Loops
 
 Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. (Hint: use `Int(arc4random_uniform(6) + 1)` to generate a random number between 1 and 6).
 */
var number: Int

while true {
    number = Int(arc4random_uniform(6)) + 1
    print(number)
    
    if number == 1 {
        break
    }
}


//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - While Loops](@next)
