//: [Previous](@previous)
//Crea una funcion a la que se le pase el nombre de un pokemon y devuelva un pokemon con su id, nombre, y los name de sus tipos, utilizando el código de la página anterior de ejemplo
/* la url https://pokeapi.co/api/v2/pokemon/fearow/
 nos permite ver las caracteristicas de un pokemon
 */


import Foundation
import _Concurrency

func getPokemon(str: String) async -> String?{
    let route = "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20"
    var request = URLRequest(url: URL(string: route)!)
    request.httpMethod = "GET"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    struct Pokemon: Codable {
        var name: String
        var url: String
    }

    struct Response: Codable {
        var count: Int
        var results: [Pokemon]?
    }
    do {
        let (data, _) = try await URLSession.shared.data(for:request)
        let decoder = JSONDecoder()
        let json = try decoder.decode(Response.self, from: data)
        if let pokemons =  json.results{
           return pokemons[1].name
        }
    } catch {
        print("error")
    }
    return nil
}
     
Task.init {
    let pokemon =  await getPokemon(str: "H")
    print(pokemon! as String)
}
//
