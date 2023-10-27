//
//  DataStore.swift
//  ContactListSwiftUI
//
//  Created by Акира on 27.10.2023.
//

import Foundation

struct DataStore {
    
    static let shared = DataStore()
    
    private init() {}
    
    let name = ["Brian", "David", "Dave", "Mick", "Freddy"]
    let seccondName = ["Molko", "Bowie", "Ghan", "Ronson", "Mercury"]
    
    let email = [ "BrianMolko@placebo.com",
                  "DavidBowie@spidersfrommars.sex",
                  "DaveGhan@depechemode.com",
                  "MickRonson@soloplayer.com",
                  "FreddyMercury@queen.com" ]
    
    let phoneNumber = [ "123-456-7890",
                        "987-654-3210",
                        "555-555-5555",
                        "111-222-3333",
                        "999-888-7777" ]
}
