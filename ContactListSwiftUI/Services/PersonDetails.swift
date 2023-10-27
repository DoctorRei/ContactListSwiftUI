//
//  PersonView.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import SwiftUI

struct Person: Identifiable {
    
    let id = UUID()  // Я понимаю, что это костыль. Но у меня сложилась ситуация, что я получал только 1 элемент массива. Проблема была с айдишником. Так что пусть генерирует че хочет, мне это свойство нужно лишь чтобы протокол подписать.
    
    var name: String
    var seccondName: String
    
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        
        " \(name) \(seccondName ) "
        
    }
    
    static func getContactList() -> [Person] {
        var contacts: [Person] = []
        
        for _ in 1...5 {
            let person = Person(name: DataStore.shared.name.randomElement() ?? "",
                                seccondName: DataStore.shared.seccondName.randomElement() ?? "",
                                email: DataStore.shared.email.randomElement() ?? "",
                                phoneNumber: DataStore.shared.phoneNumber.randomElement() ?? "")
            contacts.append(person)
        }
        
        print(contacts)
        
        return contacts
    }
    
}
