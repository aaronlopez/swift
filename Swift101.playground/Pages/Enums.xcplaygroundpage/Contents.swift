/*:
 # Enums
 */

import IOKit

enum PuntosCardinales: CaseIterable {
    case norte
    case sur
    case este
    case oeste
}

PuntosCardinales.este

// ¿Qué crees que pasará con la siguiente comparación?
let direccion: PuntosCardinales = .este
if PuntosCardinales.norte == direccion {
    print("algp")
}

var puntoCardinal : PuntosCardinales

puntoCardinal = .este

if puntoCardinal == .oeste {
    puntoCardinal = .norte
}


// crea un switch con todos los posibles valores del objeto puntos cardinales
let p : PuntosCardinales = .norte
switch p {
case .este:
    print(p)
case .oeste:
    print(p)
case .norte:
    print(p)
case .sur:
    print(p)
}

//utiliza el enum como iterable
//enum PuntosCardinales: CaseIterable
//utiliza la propiedad allases ara imprimar cuantos elementos tiene el enum

for c in PuntosCardinales.allCases {
    print(c)
}
//crea un iteracion de todos los casos del enum
// crea una funcion que se le pase un valor de los puntos cardinaes y devuelva la dirección contraria


func reverse(of p: PuntosCardinales) -> PuntosCardinales {
    switch p {
    case .este:
        return .oeste
    case .oeste:
        return .este
    case .norte:
        return .sur
    case .sur:
        return .norte
    }
}

reverse(of: .norte)

// Se pueden crear enums de tipos y asignarles valor
enum Monedas: String {
    case 😁 = "ad"
    case Dolar = "🥲"
}

Monedas.😁.rawValue

// Crea un enum de tipo In que tenga tres tipos de tallas M L XL y su talla númerica asociada
//Conviertela en iterable e imprimer en un array todos los valores raw

enum Tallas: Int, CaseIterable {
    case L = 44
    case M = 38
    case XL = 48
}
for i in Tallas.allCases {
    print(i.rawValue)
}

enum Lista: Int, CaseIterable {
    case L
    case M
    case XL
}
for i in Lista.allCases {
    print(i.rawValue)
}
// Crea un enum de tipo Int pero NO LE ASIGNES VALORES
//¿Que valores asigna por defecto?

enum Dias {
    case Lunes
    case Martes
    case Miercoles
    case Jueves
    case Viernes
    case Sabado
    case Domingo

    var dayType: String {
        self == .Sabado || self == .Domingo ? "Festivo" : "Laboral"
    }

}

// Que crees que hace?
// intenta escribir la expresion que te indiac que los miercoles son dias Laborales

let dia: Dias = .Miercoles
dia.dayType

//Asocciated Values

enum Result {
    case success(String)
    case failure(Int)
}

let operation:Result = .failure(404)


switch operation {
case .success(let result):
    print(result)
case .failure(let errorCode) where errorCode > 500:
    print("El backend NO lo entiende")
case .failure(401):
    print("Permissions")
case .failure(404):
    print("Not Found")

case .failure(let errorCode):
    print("Ni idea \(errorCode)")

}


/// Que pasará si tratamos de hacerlo directamente (Equatable)
/*if operation == .failure(404){
    print("No encontrado")
}*/

// Crea un enum EstadoFisico, con un caso pero de tipo Int, otro altura de tipo int

// Los Optionales ? SON ENUMS ¿Sorprendido, trata de crear un tipo enum que represente un opcional?

//Mutando Enums

enum LuzSalon {
    case off, on
    mutating func pulsarInterruptor() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
var salon = LuzSalon.on
salon.pulsarInterruptor()

print(salon)

// Crea un enum Dia, con dos casos, dia y noche, y dos funcionaes de mutacion, anocher y amanecer que cambie los valores, consume en una variable

enum Persona {
    case bolsa(Int)
    case rico
    mutating func ganaPasta(cuantaPasta: Int){
        switch self {
        case .bolsa(let dinero) where dinero + cuantaPasta > 100000:
            self = .rico
        case .bolsa(let dinero):
            self = Persona.bolsa(dinero + cuantaPasta)
    case .rico:
        print("teodio")
        }
    }
}

var persona = Persona.bolsa(0)
print(persona)

persona.ganaPasta(cuantaPasta: 1000000000)
print(persona)

//: [Previous](@previous)
//: [Next](@next)
