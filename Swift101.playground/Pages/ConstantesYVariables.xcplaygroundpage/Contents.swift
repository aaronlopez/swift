/*:
 # Constantes y Variables
 Swift permite definir tanto constantes como variables
 + Las constante como su nombre indica no pueden modificarse pero NO es obligatoria asignarle valor al declararlas
 + Las variables pueden cambiar de valor en cualquier momento
 
 */
let soyConstante = 1
// como variables
var soyVariables = 2
// Declara la variable nombre con valor Alberto y una constante dni con valor 78383882I

// como soy una variable puedo cambiar de valor
var soyOtraVariable = 4
soyOtraVariable = 5

//define una constante llamada "apellido" con valor "lopez" y trata de cambiar su valor a "rodriguez"



//podemos definir en una sola linea varias variables
var x = 0.0, y = 0.0, z = 0.0



/*:
 #### Trata de usar siempre constantes salvo que necesite mutarse, recomendación de Swift, the clean code y del compilador. "NADIE PIENSA EN EL POBRE COMPILADOR"
 */



/*:
 # Tipos
 los tipos se declaran utilizando : Tipo
 
 Swift es un lenguaje inteligente y inferir el tipo de la primera asignación a una variable, además es Type Safe, es decir en tiempo de compilación nos dará error si queremos enviar una String a una función que requiere un Double uso de una variable.
 
 */

var variableCadena: String

var variableCadenaConValorInicial: String = "Con valor inicial"

var variableCadenaConValorInicialPeroSinTipo = "Con valor inicial sin tipo"

print(type(of: variableCadenaConValorInicialPeroSinTipo))

let constanteCade: String

//declara una variable de algun tipo numero e imprimela por consola

//TypeSafe y conversión de tipos
// let estoFalla: String = 5
let estoNoFalla: String = String(5)

/*:
 # Type Alias
 */

typealias AudioSample = UInt16

var variableConTipoAlias : AudioSample
print(type(of: variableConTipoAlias))

/*:
 # Booleans
 */

let soyVerdadera: Bool = true
let soyFalsa: Bool = false

//let unoNOesBool: Bool = 1

/*:
 # Tuples
 Cuando queremos agrupar dos valores que deben ir siempre juntos ejemplo
 */

let http404Error = (404, "Not Found")

//podemos acceder a los valores de la tupla
http404Error.0
http404Error.1

// podemos descomponer una tupla en dos variables
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)

// podemos hacer lo mismo ignorando el valor de una de ellas si no nos hace falta
let (justTheStatusCode, _) = http404Error
print(justTheStatusCode)


//podemos usar la tupla con valores con nombre
let http200Status = (statusCode: 200, description: "OK")
http200Status.statusCode
http200Status.description

//declara la tupla login con valores usuario y password



//: [Previous](@previous)
//: [Next](@next)
