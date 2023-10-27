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
        
        List(contacts) {
            Text($0.fullName)
        }
        
        
//        List(contacts) { contact in
//            NavigationLink(destination: ContactInfoView(contact: contact)) {
//                ContactListView(person: contact)
//            }
//        }
    }
    
    struct ContactsView_Previews: PreviewProvider {
        static var previews: some View {
            ContactsView()
        }
    }
}
