//
//  NuevoContacto.swift
//  Lista
//
//  Created by aaron lopez on 13/2/22.
//

import SwiftUI

struct NuevoContacto: View {
    @ObservedObject var agenda: Agenda
    @Environment(\.dismiss) var dismiss
    @State var name: String = ""
    var body: some View {
        TextField("Name", text: $name)
        Button("Add") {
            agenda.add(anContact: Contacto(id: UUID(), nombre: name, telefono: "unTelefono", isFavourite: true, email: "AnEmail"))
            dismiss()
        }
       
    }
}

struct NuevoContacto_Previews: PreviewProvider {
    static var previews: some View {
        NuevoContacto(agenda: Agenda(withData: true))
    }
}
