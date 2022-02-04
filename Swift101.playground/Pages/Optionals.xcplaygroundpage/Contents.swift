/*:
 # Optionals
 Muy importante enterderlos porque es el día a día en el mundo real
 
 Los optionals son valores que pueden o NO tener valor, es decir son valores que pueden ser nil
 
 Se usan mucho en el trabajo con valores que vienen desde backends y en conversiones de tipos
 */

// declara una variable de tipo String, con valor "A" y trata de convertila a Int() e imprime su tipo



//nil representa la ausencia de valor

var serverResponseCode: Int? = 404
print(type(of: serverResponseCode))

serverResponseCode = nil

//quita el opcional de la linea anterior y ejecuta el playground

var iAmNil: String? = "Y tengo valor"

//forzando el valor !

//print(type(of: iAmNil!))

// Optional Binding

if let convertedNumberUnwrap = iAmNil {
    print(type(of: convertedNumberUnwrap))
}


//crear un nuevo opcional binding con la variable con valor "A" convertida a string



//: [Previous](@previous)
//: [Next](@next)
let possibleNumber = "1233"
let convertedNumber = Int(possibleNumber)
print(type(of: convertedNumber))

