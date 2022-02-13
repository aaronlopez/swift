/*:
 # Generics

 */
struct Stack<T> {
    var items: [T] = []
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

struct User {
    var name = ""
    var lastname = ""
}

var pila = Stack<String>()
pila.push("Heelo")
pila.push("Boring")
pila.pop()

var pilaEntera = Stack<Int>()
pilaEntera.push(2)
pilaEntera.push(4)
pilaEntera.pop()


// Crea una funcion generica que imprima por pantall
func printG<T>(p:T){
    print(p)
}

printG(p:"P")
// Crea un Cola generica
struct Cola<T> {
    var items: [T] = []
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeFirst()
    }
}


//: [Previous](@previous)
//: [Next](@next)
