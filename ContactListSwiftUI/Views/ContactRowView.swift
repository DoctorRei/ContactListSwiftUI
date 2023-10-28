//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct ContactRowView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.fullName)")
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(person: Person(name: "Hello", seccondName: "Misha", email: "Akira", phoneNumber: "787878"))
    }
}
