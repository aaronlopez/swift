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
   /* var m
    var cm
    var mm*/
}
var kilometroYMedio: Double = 1.5.km

if kilometroYMedio == 1500 {
    print("Exito")
}


/* Extiende la clase String para agregar otra string delate mediante una funcion llamada preprend*/


//: [Previous](@previous)
//: [Next](@next)
