

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



//Crea el protocolo Lista que:
// 1- tenga una funcion para devolver el numero de elementos de la lista
// 2- Tenga una función a la que se le pase un Int y devuelva una String con la cadena a mostrar
// 3- Tenga una función a la que se le pase un Int y Elimine esa posicion en los datos y devuelva verdadero si puedo eliminarlo
// 4- Una función que reciba una String y devuelva un Int con el número de resultados que encajen



//: [Previous](@previous)
//: [Next](@next)

