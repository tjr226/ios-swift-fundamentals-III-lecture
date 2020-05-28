func checkTemperature() {
    let temperature = Int.random(in: 1...100)
    
    if temperature > 70 {
        print("It's nice outside.")
    } else {
        print("It's a little chilly.")
    }
    
    print("finished")
}

//checkTemperature()


func checkTemperatureTwo() {
    let temperature = Int.random(in: 1...100)

    // guard statements - if they don't work, you can't run any code past them
    guard temperature >= 70 else {
        print("It's cold outside, grab a jacket")
        return // exits the function
    }
    print("The temperature is nice outside")
}

//checkTemperatureTwo()

func checkBirthday() {
    let isMyBirthday = true
    
    guard isMyBirthday == false else {
        print("Happy birthday")
        return
    }
    print("Yo")
}

//checkBirthday()

func showOffCar() {
    let myCar: String? = "Honda Civic"
    
    
    if let unwrapped = myCar {
        print(unwrapped)
    } else {
        print("I don't have a car.")
    }
}

//showOffCar()

func showOffCarTwo() {
    let myCar: String? = "Honda Civic"
    
    guard let unwrappedCar = myCar else {
        print("I don't have a car")
        return
    }
    
    print(unwrappedCar)
}

//showOffCarTwo()

// Nil coalescing operator - ??

let myCar: String? = "Honda Civic"
let brothersCar: String = "Subaru"
print(myCar ?? brothersCar)
// prints "Subaru"

// Optional Chaining
print(brothersCar.count)
print(myCar?.count)


// Composition vs Inheritance

// composition - what a class has


class Shape {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

let myShape = Shape(color: "red")
print(myShape.color)

// inheritance
class Rectangle: Shape {
    var length: Double
    var height: Double
    
    init(length: Double, height: Double, color: String) {
        self.length = length
        self.height = height
        super.init(color: color)
    }
}

let myRectangle = Rectangle(length: 20, height: 20, color: "green")
//print(myRectangle.length)

// downcasting
let myShapes: [Shape] = [myShape, myRectangle]

// Goal: print out shape's height if it's a rectangle, otherwise print the shape's color

// NOTE: the following code won't work, because Swift thinks the shape in the loop is only a Shape
//for shape in myShapes {
//    if shape is Rectangle {
//        print(shape.height)
//    } else {
//        print(shape.color)
//    }
//}

for shape in myShapes {
    // Are you a rectangle?
    
    if let rectangle = shape as? Rectangle {
        print(rectangle.height)
    } else {
        print(shape.color)
    }
    
}

