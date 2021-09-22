//
//  DetailPerson.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import SwiftUI

struct DetailPerson: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                .padding()
                
                DetailRow(image: Image(systemName: "phone"),
                          text: person.phoneNumber)
                DetailRow(image: Image(systemName: "folder.badge.person.crop"),
                          text: person.email)
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailPerson_Previews: PreviewProvider {
    static var previews: some View {
        DetailPerson(person: Person.getPerson())
    }
}
