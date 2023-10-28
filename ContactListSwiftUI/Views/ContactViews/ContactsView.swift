//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let contact: [Person]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List(contact) { contact in
                    NavigationLink(destination: ContactInfoView(contact: contact)) { //  тут мы указываем куда идем
                        ContactRowView(contact: contact) // тут у нас вьюха с настроенным текстом для таблицы для этого табличного представления.
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}
