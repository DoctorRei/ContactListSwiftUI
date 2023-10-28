//
//  PersonView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct Person: Identifiable {
    
    let id = UUID()
    
    let name: String
    let seccondName: String
    
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        
        " \(name) \(seccondName ) "
        
    }
    
    static func getContactList() -> [Person] {
        var contacts: [Person] = []
        
        for _ in 1...10 {
            let person = Person(name: DataStore.shared.name.randomElement() ?? "",
                                seccondName: DataStore.shared.seccondName.randomElement() ?? "",
                                email: DataStore.shared.email.randomElement() ?? "",
                                phoneNumber: DataStore.shared.phoneNumber.randomElement() ?? "")
            contacts.append(person)
        }
        
        return contacts
    }
    
}
