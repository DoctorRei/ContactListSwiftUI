//
//  ContactInfoView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct ContactInfoView: View {
    
    var contact: Person
    
    var body: some View {
        List {
            Image(systemName: "person.crop.rectangle")
                .resizable()
                .frame(width: 200, height: 150) // Ячейка подстраивается под размеры фото. Шикарно
                .position(CGPoint(x: 155, y: 80))
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contact.email)")
            }
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
                Text("\(contact.phoneNumber)")
            }
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person(name: "Hello", seccondName: "Misha", email: "Akirarei", phoneNumber: "789809"))
    }
}
