//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct NumbersView: View {
    
    let person = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(person) { contact in
                Section(contact.fullName) {
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.blue)
                        Text(contact.email)
                    }
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(contact.phoneNumber)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
