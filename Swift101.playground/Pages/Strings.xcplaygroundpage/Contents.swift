/*:
 # Strings
 
 Los strings son colleciones de Character, eso quiere decir que podemos acceder tanto a la colleción completa como a cada caracter individualmente
 */

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

//añade una string con al menos dos de los caraecteres especiales



//Extended String Delimiters

print(#"Ejemplo de string con delimitador extendido //"#)

// ¿ Que hace el # antes y despues del string?


// Juguemos con los strings

let empty = ""
let empty2 = String()
let empty3: String?

//¿Que diferencias crees que hay entre ellas?
//empty == empty2
//empty == empty3


//usando el . trata de saber si la strings estaVacia


//concatenando strings

let hello = "Hello"
let world  = "world"
let helloWorld = hello + world

//descomenta la linea siguiente y resuelve el problema
//hello += world

//Character
let aCharacter :Character = "H"

//¿Que crees que sucedera en las dos siguientes instruciones?
//let whatType = "A" + aCharacter
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

let aLongString = " This is a long string please, play with me"

//abre la documentacion de String y resuelve los siguientes ejericios

//obten en el número de caracteres

//obten dos cadenas separadas por ,

//Añade la cadena "Please" al final SIN usar el operador + en la 10 posicion

//convierte toda la cadena a minusculas
//convierte toda la cadena a mayusculas


//acceder al elemento 4
//aLongString[4]

let index = aLongString.index(aLongString.startIndex, offsetBy: 4)
aLongString[index]


//Igualdad
// Dos Strings son iguales cuando SU VALOR es igual



//: [Previous](@previous)
//: [Next](@next)
