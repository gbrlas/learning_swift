/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myCollection: [Any] = [1, 3.4, "Goran", 5, "Ivan_is_a_lil_biatch", true]
print(myCollection)

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for element in myCollection {
    if let el = element as? Int {
        print(el)
    } else if let el = element as? Double {
        print(el)
    } else if let el = element as? String {
        print(el)
    } else if let el = element as? Bool {
        print(el)
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var myDict: [String: Any] = ["Ivan": "Lil bitch", "Goran": 5, "test": true, "test2": false]
for (key, value) in myDict {
    print("\(key): \(value)")
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0

for value in myDict.values {
    if let v = value as? String {
        total += 1
    } else if let v = value as? Bool {
        total = v ? total + 2 : total - 3
    }
}

print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0

for value in myDict.values {
    if let v = value as? Int {
        total2 += Double(v)
    } else if let v = value as? Double {
        total2 += v
    } else if let v = value as? String {
        if let converted = Double(v) {
            total2 += converted
        }
    }
}

print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
