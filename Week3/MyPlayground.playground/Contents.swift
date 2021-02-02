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


// Functions

// Define the function
func printName(firstName: String, lastName: String) -> Void{

    print("Welcome \(firstName) \(lastName), how's your day?")
}

// Invoking the function
printName(firstName: "John", lastName: "Smith")
printName(firstName: "Jane", lastName: "Smith")

// Default
func subtract(x: Int, y: Int) -> Int{
    return x + y
}
subtract(x: 10, y: 5)

// Omit
func sum(_ x: Int,_ y: Int) -> Int{
    return x + y
}


func multiply(firstNumber x: Int,secondNumber y: Int) -> Int{
    return x + y
}
multiply(firstNumber: 1, secondNumber: 2)

func divide(numerator: Double, denominator: Double) -> Double{
    return numerator / denominator
}

divide(numerator: 10.0, denominator: 20.0)

let result = sum(10, 20)
print("the result is \(result)")

func getName() -> (String, String){
    return ("Bennett", "Lee")
}

let (firstname, lastName) = getName()

