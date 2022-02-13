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
        Text(contacto.nombre)
    }
}

struct DetalleLista_Previews: PreviewProvider {
    static var previews: some View {
        DetalleLista(contacto: Contacto())
    }
}
