import Foundation

//// This is a comment
//
///*
// This is another
// comment
// multiline
// */
//
//// Data types
//    // 1. what we can do with specific data types
//    // 2. OS knows how much space to reserve for given data types
//
//// String
//"this is a string"
//
//// Character
//"a"
//"-"
//
//// Int
//-10
//0
//25
//
//// Double (14 digits precise)
//12.120
//-32.20
//
//// Float (7 digits precise)
//90.2099999
//-120.2
//
//// Bool
//true
//false
//
//// Constant
//let firstName : String = "Bennett"
////firstName = "John"
//
//var cpus: Int = 2
//cpus = 4
////cpus = "3"
//
//// Type Inference
//var lastName = "Lee"
//
//let randomNumber : Float = 20.5
//
//// Operators
//
//
//// Arithmetic: add, divide, multiply, subtract, remainder
//10 - 1
//10 / 2
//10 * 2
//10 + 2
//15 % 2
//
//
//// Relational, equal, greater, less, not equal
//10 == 10
//10 != 5
//10 > 5
//10 >= 5
//10 < 5
//10 <= 5
//
//// Logical, and (&&), or (||), not (!)
//
//// ALL expressions need to be true for result to be true
//10 == 10 && 10 == 9
//
//// ONLY ONE expression need to be true for result to be true
//10 == 10 || 10 == 9
//
//// Inverse the boolean value
//!(10 == 10)
//
//print("hello")
//
//// String Interpolation - inject variables, expressions, values into a string
//let unreadMessages = 21
//"Jacob has \(unreadMessages) unread messages"
//
//if unreadMessages > 30{
//    print("you should probably check your inbox...")
//} else if unreadMessages > 20 {
//    print("you have more than 20 unread messages!!!")
//} else{
//    print("don't worry about it yet...")
//}

// DRY - Don't repeat yourself


///***** Functions *****/
//
//// Define the function
//func printName(firstName: String, lastName: String) -> Void{
//
//    print("Welcome \(firstName) \(lastName), how's your day?")
//}
//
//// Invoking the function
//printName(firstName: "John", lastName: "Smith")
//printName(firstName: "Jane", lastName: "Smith")
//
//// Default behavior - argument label and paramater name is the same
func subtract(x: Double, y: Double) -> Double{
    return x + y
}
//subtract(x: 10.0, y: 5.0)
//
func divide(numerator: Double, denominator: Double) -> Double{
    return numerator / denominator
}
//
//divide(numerator: 10.0, denominator: 20.0)
//
//// Omit argument label
//func sum(_ x: Int,_ y: Int) -> Int{
//    return x + y
//}
//sum(10, 5)
//
//// Define custom argument label
//func multiply(firstNumber x: Int,secondNumber y: Int) -> Int{
//    return x + y
//}
//multiply(firstNumber: 1, secondNumber: 2)
//
//let result = sum(10, 20)
//print("the result is \(result)")
//
//// Return multiple values
//func getName() -> (String, String){
//    return ("Bennett", "Lee")
//}
//
//let (firstName, lastName) = getName()


// In out Parameters
func changeNumber(x: inout Int){
    x = 10
}

var myAge = 100
changeNumber(x: &myAge)
myAge

// Variadic Params

func addAllNumbers(numbers: Double...) -> Double{
    var sum = 0.0
    for number in numbers{
        sum = sum + number
    }
    return sum
}

addAllNumbers(numbers: 1.0, 2.0, 3.0, 4.0)

// Function types

var mathFunction: (Double, Double) -> Double = divide
mathFunction(10, 20)

mathFunction = subtract

//***** Strings *****/

let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin,

please your Majesty?" he asked.
"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print(quotation)

var a = 99
var b = a
a = 200
a
b

var welcome = "hello "
let exclamationMark: Character = "!"
welcome.append(exclamationMark)
welcome

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]


let num = 42.20
print("$\(num)") // $42.2
let amount = String(format: "$%.2f whatever you want.., %.2f", num, 50.01)
print(amount)

//***** Optionals *****/

// var firstName: Optional<String> = nil --> same as String?
var firstName: String? = nil
firstName = "Bennett"

// - Force unwrapping - least amount of code, crashes app when the optional does not have a underlying value, may be good for early stages of development when you are sure that the variable will have a value and want errors to be communicated in an obvious way
print(firstName)

// - Implicitly unwrapped optional - still force unwrapping the value, but not needing to use exclaimation point every single time you access it
var computer: String! = nil
computer = "Macbook"
print(computer)

var favoriteComputer: String = computer ?? "Pixel"

// - Optional binding - only use the value inside the if statement if it exists
if let fn = firstName{
    print(fn)
}

// - Optional chaining - accessing properties of objects that are typed optional, and ignoring the statement if the properties point to nil
