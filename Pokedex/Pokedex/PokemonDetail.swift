//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by aaron lopez on 18/2/22.
//

import SwiftUI

struct PokemonDetail: View {
    var url:String
    var body: some View {
        Text(url)
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail(url:"ss")
    }
}
