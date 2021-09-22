//
//  ContactsSwiftUIApp.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import SwiftUI

@main
struct ContactsSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(persons: Person.getPersons())
        }
    }
}
