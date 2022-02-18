import Foundation

struct Pokemon: Codable {
    var name: String
    var url: String
    
}

extension Pokemon: Identifiable {
    var id: String { return name }
}

struct Response: Codable {
    var count: Int
    var results: [Pokemon]?
}

class Pokedex : ObservableObject {
    @Published var pokemons: [Pokemon] = []
    
    func loadData(){
        let route = "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20"
        var request = URLRequest(url: URL(string: route)!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            do {
                let decoder = JSONDecoder()
                
                let json = try decoder.decode(Response.self, from: data!)
                if let pokemons =  json.results{
                    self.pokemons = pokemons
                }
                
            } catch {
                print("error")
            }
        })
        
        task.resume()
    }
}
