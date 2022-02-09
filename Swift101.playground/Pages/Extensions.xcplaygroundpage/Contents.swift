/*:
 # Extensions
 Extensions can add new functionality to a type, but they can’t override existing functionality.
 */

class Simple {
    var p = "Simple"
    
}

let instance = Simple()
print(instance.p)

//Computed Properties
extension Simple {
    var extendedVar: String  { return "ExtenderVar"}
    // las extensiones NO pueden crear stored variables es decir como la que creamos en la lines 7
}

print(instance.extendedVar)

// Methods

extension Simple {
    func change(){ // Si fuera un struct seria necesario el mutating
        self.p = "Changed"
    }
}

instance.change()
instance.p

/* Extiende la clase Double para que haga automaticamente conversion a mm, cm, m, km ejemplo, supondiendo que el valor por defecto de Double SON Metros
 */
extension Double {
    var km: Double { return  self * 1000}
    func km1()->Double{
        return  self * 1000 as Double
    }
    var m: Double { return  self}

    var cm: Double { return  self / 100}

    var mm: Double { return  self / 1000}

 
}

extension Double {
    
}

var kilometroYMedio: Double = 1.5.cm

if kilometroYMedio == 1500 {
    print("Exito")
}


/* Extiende la clase String para agregar otra string delate mediante una funcion llamada preprend*/

extension String {
    mutating func prepend(_ str:String)->String {
         self = str + self
        return self
    }
}

var s = "Pepe"
s.prepend("Hola ")

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

var positivo = 20
positivo.kind

//: [Previous](@previous)
//: [Next](@next)
