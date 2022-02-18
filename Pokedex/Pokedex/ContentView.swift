//
//  ContentView.swift
//  Pokedex
//
//  Created by aaron lopez on 17/2/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pokedex = Pokedex()
    
    var body: some View {
        NavigationView{
            List(pokedex.pokemons){ pokemon in
                NavigationLink(destination:PokemonDetail(url: pokemon.url)){
                Text(pokemon.name)
            }
                
            }.
        
    }
        .onAppear(){
            pokedex.loadData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
