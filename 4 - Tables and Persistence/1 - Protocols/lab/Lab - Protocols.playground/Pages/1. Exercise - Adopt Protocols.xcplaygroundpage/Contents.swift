/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable {
    var name: String
    var age: Int
    var description: String {
        return "My name is \(name) and I am \(age) years old."
    }
    
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.description == rhs.description
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
}

var first = Human(name: "Goran", age: 22)
var second = Human(name: "Ivan", age: 10)

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(first)
print(second)

/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(first == second)
print(first == first)

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
var third = Human(name: "Lora", age: 22)
var fourth = Human(name: "Ema", age: 24)
var fifth = Human(name: "Mislav", age: 24)

let sortedPeople = [first, second, third, fourth, fifth].sorted(by: <)
print(sortedPeople)

//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
