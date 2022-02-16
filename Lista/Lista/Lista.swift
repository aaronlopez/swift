//
//  Lista.swift
//  Lista
//
//  Created by aaron lopez on 13/2/22.
//

import SwiftUI

struct Lista: View {
    @ObservedObject var agenda = Agenda(withData: true)
    var body: some View {
        NavigationView {
                    List {
                        ForEach(agenda.contactos, id: \.self) { contacto in
                            NavigationLink(destination: DetalleLista(contacto:contacto)){
                                HStack {
                                    Text(contacto.nombre)
                                    Text(contacto.email)
                                }
                                
                            }
                        }
                        .onDelete(perform: delete)
                    }
                    .navigationTitle("Agenda").toolbar {
                                  NavigationLink("Nuevo", destination:NuevoContacto(agenda: agenda))
                          }
        }
     
                
    }
    func delete(at offsets: IndexSet) {
        agenda.remove(aContact: agenda.contactos[offsets.first ?? 0])
        }
}


struct Lista_Previews: PreviewProvider {
    static var previews: some View {
        Lista()
    }
}
