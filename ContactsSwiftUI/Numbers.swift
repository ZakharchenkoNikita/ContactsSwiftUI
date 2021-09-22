//
//  Numbers.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import SwiftUI

struct Numbers: View {
    let persons: [Person]
    
    var body: some View {
        List (persons, id: \.self) { person in
            Section(header: Text(person.fullName)) {
                DetailRow(image: Image(systemName: "phone"),
                          text: person.phoneNumber)
                DetailRow(image: Image(systemName: "folder.badge.person.crop"),
                          text: person.email)
            }
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getPersons())
    }
}
