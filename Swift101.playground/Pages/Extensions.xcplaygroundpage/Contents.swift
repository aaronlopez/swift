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

// Crea una estructura CuentaBancaria, con un nombre y un total, crea una extension para el manejo en cajeros, donde se pueda añadir y scar dinero, otra extension para tarjetas de credito donde se tenga un limite y se pueda hacer pagos 

//: [Previous](@previous)
//: [Next](@next)
