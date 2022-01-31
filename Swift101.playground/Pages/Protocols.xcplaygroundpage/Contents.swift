

protocol Polygon {
  func getArea(length: Int, breadth: Int)
}

// conform un protocolo indica que nuestra clase va implementar todas las funciones necesarias
class Rectangle: Polygon {
  func getArea(length: Int, breadth: Int) {
    print("Area of the rectangle:", length * breadth)
  }
}

var r1 = Rectangle()

r1.getArea(length:5, breadth: 6)
//: [Previous](@previous)
//: [Next](@next)
