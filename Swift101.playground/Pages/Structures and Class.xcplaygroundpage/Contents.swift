/*:
 # Structures and Classes

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
import Foundation
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
    init(a: String){
        self.aProperty = a
    }
    init(a: String, b: String?){
        self.aProperty = a
        self.anOptionalProperty = b
    }
}

let anotherClass = AnotherClass(a: "Avalue")


//a las propiedades se acceden usando el .

anotherClass.aProperty
aStruct.aProperty

aStruct.aProperty = "Otro valor"
anotherClass.aProperty = "Otro valor"


//crea la struct y la clase animal con sus constructores y las propiedades raza, nombre

struct AnimalS{
    var raza: String
    var nombre: String
    init(withRaza raza:String, andNombre name:String){
        self.raza = raza
        self.nombre = name
    }
}

class Animal{
    var raza: String
    var nombre: String
    init(withRaza raza:String, andNombre name:String){
        self.raza = raza
        self.nombre = name
    }
}

class Perro: Animal {
    var tieneChip: Bool = false
}

struct PerroStruct {
    var tieneChip: Bool = false
}

var perro = Perro(withRaza: "Golden Retriever", andNombre: "Lola")
var perroStruct = PerroStruct()

//Herencia
// Las clases pueden heredar pero los structs NO
// vamos a heredar de la Clase animal cambiando añadiendo despues del nombre Perro:Animal

print(perro.tieneChip)

func a(objetito:Perro){
    objetito.tieneChip = true
}


a(objetito: perro)
print(perro.tieneChip)

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
//let otherIgual = other

if otherIgual === other {
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
/*struct Contacto {
    var nombre: String
    var apellido: String
    var nombreCompleto: String {
        get {
            return "\(nombre) \(apellido)"
        }
    }
}*/

/*var contacto = Contacto(nombre: "Aarón", apellido: "López")
contacto.nombreCompleto
*/
//Descomenta esta linea, ¿Qué pasará? ¿Qué significa?
//contacto.nombreCompleto = "HELLO"
// elimina el GET para que es innecsario ya que es una variable de solo lectura


// Crea una un struct con una variable computada que tenga get y set ( es decir que sea de lectura y escritura)

struct Name {
    var firsLetter: Character?
    var fullName: String = ""
    var full: String {
        get {
           return fullName
        }
        set(newFull) {
            firsLetter = newFull.first
            fullName = newFull
        }
    }
}

var name = Name()
name.full = "Pepe"
name.fullName
name.firsLetter
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
lazySample.print
lazySample.print
lazySample.print
lazySample.print
lazySample.print
lazySample.print
lazySample.print
lazySample.print

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




/*
 Crea una agenda completa en la que puedas almacenar contactos con nombre, telefono, email, siEsFavorito
 
 Debemos poder buscar por telefono y por nombre
 Poder  autocompletar que de te devuelva todos los contactos que cumplan con los criterios de busqueda en cualquiera de slos campos por ejemplo si busco "lop" devuelva todos los contactos que contengan esa cadena en el nombre o en el correo
 
 Podemos mandar un mensaje e imprima por consola "MEnsaje texto del mensaje a y la persona "
 Que podamos ordenar la agenda por nombre, por telefono y por email
 tener una lista de todos los favoritos
 Se pueda agregar elementos a la lista
 borrarlos y actualizarlos
 Que en cada contacto podamos "llamar" e imprima por consola que estamos llamando
 */
 
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

    mutating func remove(aContact: Contacto){
        for (index,c) in contactos.enumerated() {
            if c == aContact {
                contactos.remove(at: index)
            }
        }
    }

    func search(by str:String)-> [Contacto]{
        var filterContacts: [Contacto] = []
        for c in contactos {
            if c.nombre.contains(str) || c.email.contains(str) {
                filterContacts.append(c)
            }
        }
        return filterContacts
    }
    
}
 


/**Herencia y override**/

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()

let bicycle = Bicycle()
bicycle.hasBasket = true

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}


class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}


//Se puede impedir que se haga override con la palabra final


//Jugando con los constructores
//Crea un class carrera con una variable distancia en metros pero que tenga dos constructures uno al que se le pasan los valores enkilometros y otro al que se le pasan los valores en millas

class Carrera {
    var meters: Double = 0
    init(byKilometers km : Double){
        self.meters = km * 1000
    }
    init(byMiles miles : Double){
        self.meters = miles / 0.00062137
    }
}

var carreras = Carrera(byMiles: 7)
var carrera = Carrera(byKilometers: 1.5)


//deinit y un ejemplo que es malo con ganas
class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    /*deinit {
        Bank.receive(coins: coinsInPurse)
    }*/
}

var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
// Prints "A new player has joined the game with 100 coins"
print("There are now \(Bank.coinsInBank) coins left in the bank")
// Prints "There are now 9900 coins left in the bank"
playerOne!.win(coins: 2_000)
print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
// Prints "PlayerOne won 2000 coins & now has 2100 coins"
print("The bank now only has \(Bank.coinsInBank) coins left")
// Prints "The bank now only has 7900 coins left"
playerOne = nil
print("PlayerOne has left the game")
// Prints "PlayerOne has left the game"
print("The bank now has \(Bank.coinsInBank) coins")
// Prints "The bank now has 10000 coins"


//: [Previous](@previous)
//: [Next](@next)
