//
//  ContentView.swift
//  Lista
//
//  Created by aaron lopez on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var pinta: String = "Pal"
    @State var color =  Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

    var body: some View {
        
        VStack {
            
            Text(pinta)
                .font(.title)
                .foregroundColor(color)
            TextField("Name", text: $pinta)
            HStack{
                
                ColorPicker("", selection: $color)
                    .padding()
            }
            Image(systemName: "command.circle")
                .foregroundColor(Color.orange)
            Image(uiImage: UIImage(imageLiteralResourceName: "donpanic"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Previews_ContentView_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(/*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/)
    }
}
