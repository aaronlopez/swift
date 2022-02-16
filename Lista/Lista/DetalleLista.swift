//
//  DetalleLista.swift
//  Lista
//
//  Created by aaron lopez on 13/2/22.
//

import SwiftUI

struct DetalleLista: View {
    @State var contacto: Contacto

    var body: some View {
        VStack {
            DetalleRow(image: "phone", label: contacto.telefono)
           

        }
    }
}

struct DetalleLista_Previews: PreviewProvider {
    static var previews: some View {
        DetalleLista(contacto: Contacto(id: UUID(), nombre: "aaron", telefono: "612443121234", isFavourite: true, email: "aaa.@gmail.com"))
    }
}
