import Foundation

// Strong Reference Cycle

// Memory Management

class Person{
    init(){
        print("im initializing")
    }
    
    deinit {
        print("goodbye")
    }
}

class HTMLElement{
    
}

var paragraph: HTMLElement? = HTMLElement() // retain count starts off at 1, then after the closure is initialize, it has a retain count of 2

paragraph = nil // HTMLElement object has a retain count of 1

// Reference counting
// #1 -> as long as an object has a retain count greater than 0, keep it in memory

var p1: Person? = Person() // retain count 1
p1 = nil  // retain count 0
print("something")


// Collections

// Mutable -> change the collection / var
// Immutable -> cannot change the collection / let

// let people: Array<String> = ["Hiroko", "Cam", "James"]

//let people: [String] = ["Hiroko", "Cam", "James"]

var names = ["Hiroko", "Cam", "James"]

// Accessing an array
names[0]
names[2]

// Adding to an array
names.append("Eric")
names

// Remove from an array
names.remove(at: 2)
names

names.contains("Cam")
names.count

names.sorted()

//var numbers = [Int]()
var numbers = Array<Int>()

// Creating a dctionary
//let airports : Dictionary<String, String> = [
//    "LAX": "Los Angeles",
//    "JFK": "New York",
//    "EWR": "Newwark"
//]

//let airports : [String : String] = [
//    "LAX": "Los Angeles",
//    "JFK": "New York",
//    "EWR": "Newwark"
//]

var airports  = [
    "LAX": "Los Angeles",
    "JFK": "New York",
    "EWR": "Newwark"
]

// Access
print(airports["JFK"])

// Remove
airports["JFK"] = nil

// Add key value pairs
airports["AUS"] = "Austin"
airports

// Enumerate (go through each key / value pair)

for (airportCode, city) in airports{
    print("Key: \(airportCode), value : \(city)")
}
