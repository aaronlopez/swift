//
//  DetalleRow.swift
//  Lista
//
//  Created by aaron lopez on 14/2/22.
//

import SwiftUI

struct DetalleRow: View {
    @State var image = ""
    @State var label = ""
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: image)
            Text(label)
                .multilineTextAlignment(.trailing)
                .padding(.leading)
        }
        .padding(.horizontal)
    }
}

struct DetalleRow_Previews: PreviewProvider {
    static var previews: some View {
        DetalleRow(image: "phone", label: "aaron")
    }
}
