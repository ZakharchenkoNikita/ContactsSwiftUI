//
//  Contacts.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import SwiftUI

struct Contacts: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.self) { person in
            NavigationLink(destination: DetailPerson(person: person)) {
                Text("\(person.name) \(person.surname)")
            }
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.getPersons())
    }
}
