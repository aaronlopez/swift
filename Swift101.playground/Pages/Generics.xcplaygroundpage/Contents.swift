/*:
 # Generics

 */
struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var pila = Stack<String>()
pila.push("Heelo")
pila.push("Boring")
pila.pop()


// Crea una funcion generica que imprima por pantall
// Crea un Cola generica
// Crea una calculadora generia que sume, reste y multiplique de manera generica

//: [Previous](@previous)
//: [Next](@next)
