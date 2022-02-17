/*:
 # Strings
 
 Los strings son colleciones de Character, eso quiere decir que podemos acceder tanto a la colleción completa como a cada caracter individualmente
 */
import Foundation
let aString = "Hello World"

//esto es una String multilinea

let autoestopista = """
"Debe ser jueves" -dijo Arthur para sí, inclinándose sobre la cerveza-.
"Nunca puedo aguantar la resaca de los jueves".
"""


/*:
 Tenemos  caractares especiales
 \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation mark) and \' (single quotation mark)
 */
import Foundation
//añade una string con al menos dos de los caraecteres especiales



//Extended String Delimiters

print(#"Ejemplo de string con delimitador extendido //"#)

// ¿ Que hace el # antes y despues del string?


// Juguemos con los strings

var empty = ""
var empty2 = String("")
var empty3: String? = ""

//¿Que diferencias crees que hay entre ellas?
empty == empty2
empty == empty3


//usando el . trata de saber si la strings estaVacia
print(empty.isEmpty)

//concatenando strings

var hello = "Hello"
let world  = "world"
let helloWorld = hello + world

//descomenta la linea siguiente y resuelve el problema
hello += world

//Character
let aCharacter :Character = "H"
let aCharacter2 :Character = "A"

//¿Que crees que sucedera en las dos siguientes instruciones?
//let whatType = aCharacter2 + aCharacter
//print(type(of: whatType))

var stringWithCharacter = "Hello"
stringWithCharacter.append(aCharacter)
print(type(of: stringWithCharacter))


//interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//crea tres variables, nombre, apellido, dni y un nuevo string interpolado con la union de los tres elementos separador por - y espacios


let unusualMenae🐨 = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
//SI LO DE ARRIBA ES VALIDO, PERO OLVIDA QUE EXISTE


// Subcadenas y operaciones sobre strings

var aLongString = " This is a long string please, play with me"

//abre la documentacion de String y resuelve los siguientes ejericios

//obten en el número de caracteres
aLongString.count
//obten dos cadenas separadas por ,
aLongString.split(separator: ",")
//convierte toda la cadena a minusculas
aLongString.lowercased()
//convierte toda la cadena a mayusculas
aLongString.uppercased()

//Añade la cadena "Please" al final SIN usar el operador + en la 10 posicion

//acceder al elemento 4
//aLongString[4]
let index = aLongString.index(aLongString.startIndex, offsetBy: 4)
//aLongString[index] = "a"



// Añador elementos delate
aLongString = "ahsh " + aLongString
aLongString.insert("A", at: aLongString.startIndex)
// Añadir elementos detras
aLongString.append(contentsOf: "Aaa")
aLongString.insert("A", at: aLongString.endIndex)
//insertar un elemento en una posicion
//aLongString.insert("A", at: aLongString.index(aLongString.startIndex, offsetBy: 4))

// buscar el indice de  "play"
aLongString.contains("play")
let range = aLongString.range(of: "play")
// Reemplazar palabras: long -> short
if let r = range {
    aLongString.replaceSubrange(r, with: "short")
}

//Igualdad
// Dos Strings son iguales cuando SU VALOR es igual
let repeated = repeatElement("*", count: 5)


//: [Previous](@previous)
//: [Next](@next)
