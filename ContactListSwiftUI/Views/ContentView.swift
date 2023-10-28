//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        let person = Person.getContactList()
        
        TabView {
            ContactsView(contact: person)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Contacts")
                }
            
            NumbersView(contact: person)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
