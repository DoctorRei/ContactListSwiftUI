//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.name)")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(person: Person(name: "Hello", seccondName: "Misha", email: "Akira", phoneNumber: "787878"))
    }
}
