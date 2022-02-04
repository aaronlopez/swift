import Foundation
//Identificar letras repetidas en un string

func letrasRepetidas (_ word: String) -> Bool {
    var iterLeter: String = ""
    for letter in word {
        if iterLeter.contains(letter) {
            return true
        }
        iterLeter.insert(letter, at: iterLeter.endIndex)
    }
    return false
}

assert(letrasRepetidas( "hola") == false)
assert(letrasRepetidas("casa") == true)
assert(letrasRepetidas("cAsa") == false)


// Es un palindromo
//ala --> se lee igual de izquierda a derecha que de derecha a izquierda

func palindromo (_ str: String) -> Bool {
    return str == String(str.reversed())
}


 assert(palindromo("ala") == true)
assert(palindromo("casa") == false)


//Devuelve verdadero sin dos strings tienen los mismos caracteres

func mismosCaracteres (str1: String, str2: String) -> Bool {
    for letter in str1 {
        if !str2.lowercased().contains(letter.lowercased()) {
            return false
        }
     }
    return str1.count == str2.count
}


assert(mismosCaracteres(str1: "saco", str2: "cosa") == true)
assert(mismosCaracteres(str1: "hola", str2: "hola") == true)
assert(mismosCaracteres(str1: "casa", str2: "camion") == false)
assert(mismosCaracteres(str1: "abc", str2: "cba") == true)
assert(mismosCaracteres(str1: "abca", str2: "cba") == false)
assert(mismosCaracteres(str1: "a", str2: "aa") == false)
assert(mismosCaracteres(str1: "Hola", str2: "hOLa") == true)



// Contar las letras diferentes en un String

func diferentLetters (word: String) -> Int {
    var iterLeter: String = ""
    for letter in word {
        if !iterLeter.contains(letter) {
            iterLeter.insert(letter, at: iterLeter.endIndex)
        }
    }
    return iterLeter.count
}


 assert(diferentLetters(word: "mariposa") == 7)
assert(diferentLetters(word: "ala") == 2)
assert(diferentLetters(word: "") == 0)


//Elimina letras duplicadas de un String
func eliminarRepetidas (str: String) -> String {
   return ""
}


//assert(eliminarRepetidas(str: "hello") == "helo")
// assert(eliminarRepetidas(str: "carro") == "caro")
//assert(eliminarRepetidas(str: "casa") == "cas")
//assert(eliminarRepetidas(str: "television") == "telvison")
 
 
//Elimina espacios de más en un String

func removeSpaces(_ str: String) -> String {
    return "";
}

//assert(removeSpaces("El perro   come     pienso") == "El perro come pienso")

//assert(removeSpaces("    El perro   come     pienso     ") == "El perro come pienso")

// 2 strings de entrada
// 1 boolean

// "abcd" "dabc" -> true
// "abcd" "bcda" --> true
// "abcd" "abcd" --> true
// "abcd" "abdc" -> false

func rotados (str1: String, str2: String) -> Bool {
    return true
}
/*
assert(rotados(str1: "abcd", str2: "dabc") == true)
assert(rotados(str1: "abcd", str2: "bcda") == true)
assert(rotados(str1: "abcd", str2: "abcd") == true)
assert(rotados(str1: "abcd", str2: "abdc") == false)
*/


// Número de vocales y de consonantes

func vocalesYConsonantes (str: String) -> (vocales: Int, consonantes: Int) {
    return (0,0)
}

//assert(vocalesYConsonantes(str: "hola caracolas") == (6, 7), "error")

// Número de vocales y de consonantes distintas

func vocalesYConsonantesDinstintas (str: String) -> (vocales: Int, consonantes: Int) {
    return (0,0)
}

//assert(vocalesYConsonantesDinstintas(str: "hola caracolas") == (2, 7), "error")


// Tres letras diferentes
// "casa" y "cosa" --> true
// "casas" y "casa" --> false
// "caballo" y "camello" --> true
// "amigo" y "elijo" --> true
// "martillo" y "molinill" --> false

func tresLetrasDiferente (str1: String, str2: String) -> Bool {
    return false
}


/*
assert(tresLetrasDiferente(str1: "casa", str2: "cosa") == true, "error")
assert(tresLetrasDiferente(str1: "casas", str2: "casa") == false, "error")
assert(tresLetrasDiferente(str1: "caballo", str2: "camello") == true, "error")
assert(tresLetrasDiferente(str1: "amigo", str2: "elijo") == true, "error")
assert(tresLetrasDiferente(str1: "martillo", str2: "molinill") == false, "error")
*/

// solo respuestas incorrectas
//N represensta el numéro de respuestas de un example
// C es un String con las repuestas correctas A o B
//debemos devolver un examen con todas las respuestas incorrectas

func getWrongAnswers(n: Int, c:String) -> String {
  // Write your code here
    var wrongAnswers = ""
    for i in c {
        if i == "A" {
            wrongAnswers.insert("B", at: wrongAnswers.endIndex)

        }else{
            wrongAnswers.insert("A", at: wrongAnswers.endIndex)
        }
    }
    return wrongAnswers
}


assert(getWrongAnswers(n: 3, c: "ABA") == "BAB", "error")
assert(getWrongAnswers(n: 5, c: "BBBBB") == "AAAAA", "error")


//: [Next](@next)
//: [Previous](@previous)
