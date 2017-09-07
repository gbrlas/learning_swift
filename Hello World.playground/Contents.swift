//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print ("Hello, world!")

print(str)

struct Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func sayHello() {
        print("Hello there! My name is \(firstName) \(lastName).")
    }
}

var ivan = Person(firstName: "Ivan", lastName: "Brlas")
ivan.sayHello()

var wholeNumber = 30
var doubleNumber = 25.0

doubleNumber = Double(wholeNumber)

let number: Double = 3
print(number)

struct Car {
    var make: String
    var model: String
    var year: Int
}

let myCar = Car(make: "Hyundai", model: "Accent", year: 2001)

print(myCar)

let x = 14
let y = 2.5
let result = Double(x) * y

let temperature = 101

if temperature >= 100 {
    print("The water is boiling")
}

let isBoiling = temperature >= 100


let numberOfWheels = 2

switch numberOfWheels {
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
default:
    print("Thats a lot of wheels")
}

let character = "z"

switch character {
case "a", "e", "i", "o", "u":
    print("It's a vowel.")
default:
    print("It's a consonant")
}

var largest: Int
let a = 15
let b = 4
largest = a > b ? a : b






