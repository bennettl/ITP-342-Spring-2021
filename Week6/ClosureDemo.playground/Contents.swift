import Foundation

//@objc
//protocol Driveable{
//
//    func turnLeft()
//
//    func turnRight()
//
//    func accelerate()
//
//    func decelerate()
//
//    @objc optional func reverse()
//}
//
//class Car : Driveable {
//    func turnLeft() {
//        print("car turning left...")
//    }
//
//    func turnRight() {
//
//    }
//
//    func accelerate() {
//
//    }
//
//    func decelerate() {
//
//    }
//
//
//}

// Closures: A block of functionality / code

"Chris" > "Alex"
"Z" > "A"

func backward(_ s1: String, _ s2: String) -> Bool {
     return s1 > s2 // chris > alex
}

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

names.sort(by: backward)

// Since "backward" function is ONLY going to be used once, let's put the functionality in a closure expression where it is used
// Closure expression
names.sort(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2 // chris > alex
})

// Return type can be inferred from the expression s1 > s2
names.sort(by: {(s1, s2) in
    return s1 > s2 // chris > alex
})

// If the body of your closure is just a single expression, you don't need "return" keyword
names.sort(by: {(s1, s2) in s1 > s2 })

// Swift automatically creates variables for arguments in the fashion: $0, $1, $2 ... to the number of arguments for the closure
names.sort(by: { $0 > $1 })

// Trailing closures (closure is the last argument in the argument list) don't need a label and don't need to be inside the parameter list
names.sort { $0 > $1 }


//names.sort(by: <#T##(String, String) throws -> Bool#>)







