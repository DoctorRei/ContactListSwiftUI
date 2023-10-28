//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct NumbersView: View {
    
    let contact: [Person]
    
    var body: some View {
        NavigationStack {
            List(contact) { contact in
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
