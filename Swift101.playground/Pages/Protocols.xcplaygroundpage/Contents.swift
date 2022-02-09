import Foundation

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

protocol Lista {
    func count()-> Int
    func display(of index:Int) -> String
    mutating func remove(at index:Int)-> Bool
    func search(by query:String)->Int
}

struct Contacto: Equatable {
    var nombre: String = ""
    var telefono: String = ""
    var isFavourite: Bool = false
    var email: String = ""
    func llamar(){
        print("Llamando a \(nombre) \(telefono)")
    }
    func emailTo(){
        print("Llamando a \(nombre) \(email)")
    }
}

struct Agenda {
    var contactos: [Contacto] = []

    mutating func add(anContact: Contacto){
         contactos.append(anContact)
        
    }

    mutating func removeE(aContact: Contacto){
        for (index,c) in contactos.enumerated() {
            if c == aContact {
                contactos.remove(at: index)
            }
        }
    }

    func search2(by str:String)-> [Contacto]{
      /*  var filterContacts: [Contacto] = []
        for c in contactos {
            
        }
        return filterContacts*/
    }
    
}
 
extension Agenda:Lista{
    func count() -> Int {
        contactos.count
    }
    
    func display(of index: Int) -> String {
        contactos[index].nombre
    }
    
    mutating func remove(at index: Int) -> Bool {
        let count = contactos.count
         self.removeE(aContact: contactos[index])
        return count != contactos.count
    }
    
    func search(by query: String) -> Int {
        //return self.search2(by: query)
        return 0
    }
    
}



//: [Previous](@previous)
//: [Next](@next)

