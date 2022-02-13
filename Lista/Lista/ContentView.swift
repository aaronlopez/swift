//
//  ContentView.swift
//  Lista
//
//  Created by aaron lopez on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var pinta: String = ""
    @State var color =  Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        VStack {
            Text(pinta)
            TextField("Name", text: $pinta)
            HStack{
                
                ColorPicker("", selection: $color)
                    .padding()
            }
            Image(uiImage: UIImage(imageLiteralResourceName: "donpanic"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 0.0)
                .scaledToFit()
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
