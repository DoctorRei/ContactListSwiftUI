//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List(contacts) { contact in
                    NavigationLink(destination: ContactInfoView(contact: contact)) { //  тут мы указываем куда идем
                        ContactRowView(person: contact) // тут у нас вьюха с настроенным текстом для таблицы для этого табличного представления.
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}

