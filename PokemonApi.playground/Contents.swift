/*:
 # Pokemon Api
 
Hoy queremos usar recursos de red ya que es lo más común en todas las aplicaciones
 
 En este caso es la api de pokemon que es libre y ahora revisaremos con calma la documentación la podemos encontrar en https://pokeapi.co/
 
 Este ejercicio es muy común en las entrevistas de trabajo y básicamente consiste en construir una pokedex, es decir un lugar donde podamos ver todos los pokemons y acceder al detalle de cada uno, como esto es un playgraound no podemos leer desde consola asi que crearemos la clases necesarias y las invocaremos manualmente, es un de arquitectura y complejo primero veremos algunos conceptos y luego poco a poco trabajaremos
 

 */


import Foundation

var route = "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20"
var request = URLRequest(url: URL(string: route)!)
request.httpMethod = "GET"
request.addValue("application/json", forHTTPHeaderField: "Content-Type")

let session = URLSession.shared
let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
    print(response!)
    do {
        let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
        print(json)
    } catch {
        print("error")
    }
})

task.resume()

//
