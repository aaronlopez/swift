/*:
 # Functions
 Por fin llegamos a lo divertido, ya podemos crear funciones para separar nuestra lógica y hacer cosas divertidas con nuestro código
 
 */

//estructura

func helloWorld(){
    print("Hello Word")
}

//helloWorld()
//las funciones pueden devolver valores


func helloWorld() -> String{
     return "Hello Word"
}

let hello: String = helloWorld()

//Cambia el nombre de la funcion helloWorldWithValue y llamala helloWorld
//Que sucede? Por qué?

//Añadiendo parametros
func hello(who name:String = "World") -> String{
        return "Hello \(name)"
}

hello()
hello(who:"Aarón")

//las Strings se pasan por valor

var pepe = "Peter"
func reapeatString( name:inout String){
    name = name + "Parker"
}

reapeatString(name:&pepe)
print(pepe)

//pero las colleciones se pasan por referencia
var namesAAA = ["Peter"]
func reapeatStringArray(_ name:[String]){
    namesAAA += ["Parker"]
}
print(namesAAA)
reapeatStringArray(namesAAA)
print(namesAAA)

//pero existe el parametro inout que podemos poner, que os voy a explicar ahora y lo vais a olvidar según termine



//usar funciones como parametros


func printMathResult(operation mathFunction: (Int, Int) -> Int,  a: Int, b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(operation: addTwoInts, a: 3,b: 5)


func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// Closures
let addTwoIntsClosure = {(_ a: Int, _ b: Int) -> Int in
    return a + b
}
print(addTwoIntsClosure(2,4))

//Podemos tener la tentación de decir que los closures son como funcines pero en realdiad es justo alreves, las funciones son Closures con azucar sintactico

//Ejercicio
// Creamos una agenda (array, diccionario, set,...) que tenga nombre y telefono,
// Crea una funcion para agregar nuevos contactos,
// para comprobar si un contacto está en la agenda
// una funcion para "llamar a un contacto que pasado un nombre imprima su telefono por pantalla"

//Crea una pila y una cola
//Crea una lista de la compra
//una funcion para agregar elementos, otra para quitarlos, un buscador, y un agregador de todos los ingredientes de una receta
// Permite añadir la cantidad a la lista de la compra de cada articulo

//: [Previous](@previous)
//: [Next](@next)
