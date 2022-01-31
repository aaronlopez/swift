/*:
 # Structures and Class

En swift Struct and Class son mucho más parecidos en en otros lenguajes.
 
Ambos:
 + Tienen propiedades y metodos
 + Tienen contructores
 + Pueden extender su funcionalidades
 * Pueden cumplir con protocolos

 Las clases además:
 + Pueden heredar
 + Pueden usar deconstructores para liberar recursos
 + El casting de tipos permite comprobar e interpretar el tipo de una instancia de clase en tiempo de ejecución. ( básicamente por la herencia )
 
### Swfit recomienda usar siempre Estructuras siempre que sea posible porque los añadidos de las clases son costosos
 */

//sintaxis básica

class AClass {
    var aProperty: String = ""
    var anOptionalProperty: String?
    
}

struct AnStruct {
    var aProperty: String
    var anOptionalProperty: String?
    
}

// Los structs tiene un constructor por defecto con las variables que añamos metido
var aStruct = AnStruct(aProperty: "", anOptionalProperty: nil)
print(aStruct)

//En class nosotros creamos los constructores o asignamos valores por defectos a las propiedades
class AnotherClass {
    var aProperty: String
    var anOptionalProperty: String?
    init(a: String, b: String?){
        self.aProperty = a
        self.anOptionalProperty = b
    }
}

let anotherClass = AnotherClass(a: "Avalue", b: nil)


//a las propiedades se acceden usando el .

anotherClass.aProperty
aStruct.aProperty

aStruct.aProperty = "Otro valor"
anotherClass.aProperty = "Otro valor"


//crea la struct y la clase animal con sus constructores y las propiedades raza, nombre




class Perro {
    var tieneChip: Bool = false
}

struct PerroStruct {
    var tieneChip: Bool = false
}

var perro = Perro()
var perroStruct = PerroStruct()

//Herencia
// Las clases pueden heredar pero los structs NO
// vamos a heredar de la Clase animal cambiando añadiendo despues del nombre Perro:Animal


//PREGUNTA:

// ¿Cómo crees que implementa swfit los Int, String, Boolean.... todos los tipos básicos?



//Structures and Enumerations Are Value Types
//¿Qué significa eso? ¿Crear el código necesario para comprobarlo? ¿Y las clases?Compruebalo



//Jugando con la igualdad

/*
class Igualdad {
    var aValue: String
    init(_ aValue:String){
        self.aValue = aValue
    }
}

let igualdad = Igualdad("Hey")
let other = Igualdad("Hey")

if igualdad === other {
    print("Iguales")
}
let otherIgual = igualdad

if otherIgual === igualdad {
    print("Iguales")
}
 */

//Cambia la clase Igualdad a struct y piensa que sucede

struct Igualdad:Equatable {
    var aValue: String
}

let igualdad = Igualdad(aValue: "Hey")
let other = Igualdad(aValue: "Hey")

if igualdad == other {
    print("Iguales")
}
let otherIgual = igualdad

if otherIgual == igualdad {
    print("Iguales")
}


//Propiedades computadas
struct Contacto {
    var nombre: String
    var apellido: String
    var nombreCompleto: String {
        get {
            return "\(nombre) \(apellido)"
        }
    }
}

var contacto = Contacto(nombre: "Aarón", apellido: "López")
contacto.nombreCompleto

//Descomenta esta linea, ¿Qué pasará? ¿Qué significa?
//contacto.nombreCompleto = "HELLO"
// elimina el GET para que es innecsario ya que es una variable de solo lectura


// Crea una un struct con una variable computada que tenga get y set ( es decir que sea de lectura y escritura)


//LAZY PROPERTIES

class Imprimo {
    init(){
        print("Imprimo")
    }
}

class TengoUnaPropertyLazy {
    lazy var print = Imprimo()
    var yoNoSoyLazy = Imprimo()
}

// Cuantas veces se va a imprimir "Imprimo"
var lazySample = TengoUnaPropertyLazy()


//Oberservando propiedades
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200


//: [Previous](@previous)
//: [Next](@next)
