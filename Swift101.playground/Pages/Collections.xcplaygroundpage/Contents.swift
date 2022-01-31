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

var userPasword : [String: String] = [:]
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


//Crea un Diccionario con una clave de tipo String que represente el DNI y un valor de tipo Tuple que sea nombre y apellido
//añade al menos 4 elementos



/*:
 ### Sets
 A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.
 
Las claves y los valores deben tener el mismo tipo entre ellos
 */

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
