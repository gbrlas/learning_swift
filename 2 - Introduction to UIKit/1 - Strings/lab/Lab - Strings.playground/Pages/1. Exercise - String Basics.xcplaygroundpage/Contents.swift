/*:
 ## Exercise - String Basics
 
 Create a `name` constant and assign it a string literal representing your name.
 */
let name = "Goran"

/*:
 Create a `favoriteQuote` constant and assign it the following string literal:
 
 - "My favorite quote is <INSERT QUOTE HERE>."
 
 Write in your own favorite quote where indicated, and be sure to include escaped quotation marks. Print the value of `favoriteQuote`
 */
let myFavouriteQuote = "My favourite qoute is \"Do or do not, there is no try.\""

/*:
 Write an if-else statement that prints "There's nothing here" if `emptyString` is empty, and "It's not as empty as I thought" otherwise.
 */
let emptyString = ""

if emptyString.characters.count == 0 {
    print("There's nothing here")
} else {
    print("It's not as empty as I thought.")
}


//: page 1 of 5  |  [Next: Exercise - Concatenation and Interpolation](@next)
