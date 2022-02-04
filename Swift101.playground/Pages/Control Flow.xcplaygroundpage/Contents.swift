/*:
 # Control Flow
 ### While
 se ejecuta el bucle mientra se cumpla la condición
 
 while condition {
     
 }
 

 ### Repeat - While
 Lo mismo que el while pero siempre se ejecuta una vez
 
 
 repeat {
     statements
 } while condition

 
 ### For in
 recorre todos los elementos de la colección
 
 For variable in Colleccion {
 
 }
 

 
 ### If
 Flujo condicional
 
 if condición {
     
 } else {
     
 
 ### Switch
 A diferencia de los switch en otros lenguajes no es necesario un break entre casos, una vez se cumple un caso este se ejecuta y se ignoran los otros
 
 
 switch some value to consider {
 
 case value 1:
 
     respond to value 1
 
 case value 2,
      value 3:
 
     respond to value 2 or 3
 
 default:

}
### Control Transfer Statements
 + continue
 + break
 + fallthrough
 + return
 + throw


 ### Guard
Similares a los if, se utilizan sobre todo en la cuando necesitamos convertir de un tipo a otro, lo hacemos para asegurarnos que se cumplen las condiciones, por ejemplo si estamos leyendo datos de un formulario y hay alguno obligatorio
 
 guard let name = person["name"] else {
         return
     }

 */
//Primero veremos los snippets
// presiona cmd+shif+l
// While

var count = 0
while count <  10 {
    count += 1
}

count = 0

repeat{
    count += 1
}while(count < 10)

// for

for index in 1...3 {
    print(index)
}


// crea un array con valores de estilos musicales y un diccionario de persona y genero favorito
//recorre el array y printa todos los elementos

// recorre el diccionario , y pinta las claves y los valores

//añade un if al bucle de manera que si el genero musical no esta en la lista se añada

//ordena el array de generos musicales y enviar el primer valor a un switch cuyos cases sean generemos musicales y por defecto imprima no conozco el genero



//: [Previous](@previous)
//: [Next](@next)
