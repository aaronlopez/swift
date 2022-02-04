/*:
 # Collections
En swift tenemos tres tipos de collecciones: Arrays, Set, Dictionary
 + Las colecciones son ELEMENTOS MUTABLES, eso significa que siempre que operamos sobre la colleccion la estamos modificando
 + Todas las colecciones empiezan en 0
 https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html
 
 ### Array
 */

var shoppingList: [String] = ["Eggs", "Butter"]
shoppingList.append("Milk")
shoppingList += ["Bread"]

// Añade un elemento al array

var ppp = [1, 2 ,3]
print(type(of: ppp))
ppp[0] = 5
if ppp == [5,2,3] {
    print("Iguales")
}
// Añade un elemento como primer elemento

//ordena la lista
//imprime el número de elementos

//que crees que hará el metodo siguiente SIN ejecutarlo
shoppingList.split(separator: "Milk")
shoppingList[2]

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
/*:
 ### Dictionary
 Almacenanmiento de valores por clave-valor son muy utiles cuando necesitamos acceder a elementos concretos de manera muy rapida sin necesiadad de que mantengan orden entre ellos, no se pueden repetir las claves pero si los valores
 
Las claves y los valores deben tener el mismo tipo entre ellos
 */

var userPasword: [String: String] = [:]
userPasword["Aaron"] = "11111"
userPasword["Aaron"]
//obtenemos el número de elementos

userPasword.count
//todas las claves
userPasword.keys
//todos los valores
userPasword.values

//modificando valores
userPasword["Aaron"] = "22222"
userPasword.updateValue("333", forKey: "Aaron")
userPasword["Aaron"]

for uP in userPasword {
    print("Item \(uP.key): \(uP.value)")
}

//Crea un Diccionario con una clave de tipo String que represente el DNI y un valor de tipo Tuple que sea nombre y apellido
//añade al menos 4 elementos


var generos: Set<String> = ["Rock", "Classical", "Hip hop"]

generos.count
generos.insert("Pop")
generos.insert("Pop")

for genre in generos.sorted() {
    print("\(genre)")
}


//Crea un inventario para un videojuego agrega 5 items, eleminar uno, muestra cuantos elementos quedan


//: [Previous](@previous)
//: [Next](@next)
