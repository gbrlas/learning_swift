/*:
 ## Exercise - Control Transfer Statements
 
 Create a for-in loop that will loop through the characters of `alphabet`, and print every other letter by continuing to the next iteration if you are on a letter you do not wish to print. (Hint: You can use the modulo operator to only print even indexed characters).
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letter) in alphabet.characters.enumerated() {
    if index % 2 == 0 {
        print(letter)
    } else {
        continue
    }
}


/*:
 Create a `[String: String]` dictionary where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, with one of them being your home state. Now loop through this dictionary again, printing out the keys and values in a sentence, but add an if statement that will check if the current iteration is your home state. If it is, print("I found my home!") and break out of the loop.
 */
var stateCapitals = ["Croatia": "Zagreb", "Spain": "Madrid", "United Kingdom": "London"]

for (state, capital) in stateCapitals {
    print("The capital of \(state) is \(capital).")
    
    if state == "Croatia" {
        print("I found my home!")
        break
    }
}

//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Finding Movements](@next)
