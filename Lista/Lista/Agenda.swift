//
//  Agenda.swift
//  Lista
//
//  Created by aaron lopez on 13/2/22.
//

import UIKit



struct Contacto: Identifiable, Equatable,Hashable  {
    var id: UUID = UUID()
   var nombre: String = ""
   var telefono: String = ""
   var isFavourite: Bool = false
   var email: String = ""
   func llamar(){
       print("Llamando a \(nombre) \(telefono)")
   }
   func emailTo(){
       print("Llamando a \(nombre) \(email)")
   }
}

class Agenda : ObservableObject {
    @Published var contactos: [Contacto] = []

    init(withData:Bool){
        contactos.append(Contacto(nombre: "aaron", telefono: "33333", isFavourite: true, email: "aall@gm.com"))
        contactos.append(Contacto(nombre: "aaron1", telefono: "33333", isFavourite: true, email: "aall@gm.com"))
        contactos.append(Contacto(nombre: "aaron2", telefono: "33333", isFavourite: true, email: "aall@gm.com"))
        contactos.append(Contacto(nombre: "aaron3", telefono: "33333", isFavourite: true, email: "aall@gm.com"))
        
        
    }
    
    func add(anContact: Contacto){
        contactos.append(anContact)
       
   }

    func remove(aContact: Contacto){
       for (index,c) in contactos.enumerated() {
           if c == aContact {
               contactos.remove(at: index)
           }
       }
   }

   func search(by str:String)-> [Contacto]{
       var filterContacts: [Contacto] = []
       for c in contactos {
           if c.nombre.contains(str) || c.email.contains(str) {
               filterContacts.append(c)
           }
       }
       return filterContacts
   }
   
}

