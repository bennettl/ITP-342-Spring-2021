import Foundation

// Define the variable
struct Point {
    var x = 0.0, y = 0.0
}


struct Size {
    var width: Double
    var height: Double
    init(){
        // Some complex logic to initialize data
        // Make a web / API request to get data
        width = 10.0
        height = 20.0
    }
}



struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var rect = Rect()
rect.center = Point(x: 20, y: 20)


struct Student{
    static var numberOfStudents = 0
    init(){
        Student.numberOfStudents += 1
    }
}
