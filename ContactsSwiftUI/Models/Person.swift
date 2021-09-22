//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//
import Foundation

class Person: NSObject {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        var names = Set(DataManager.shared.names)
        var surnames = Set(DataManager.shared.surnames)
        var emails = Set(DataManager.shared.emails)
        var phoneNumbers = Set(DataManager.shared.phoneNumbers)
        
        for _ in 0..<names.count {
            let personName = names.randomElement() ?? ""
            names.remove(personName)
            
            let personSurnames = surnames.randomElement() ?? ""
            surnames.remove(personSurnames)
            
            let personEmails = emails.randomElement() ?? ""
            emails.remove(personEmails)
            
            let personPhoneNumbers = phoneNumbers.randomElement() ?? ""
            phoneNumbers.remove(personPhoneNumbers)
            
            persons.append(Person(
                name: personName,
                surname: personSurnames,
                phoneNumber: personPhoneNumbers,
                email: personEmails
            ))
        }
        
        return persons
    }
    
    static func getPerson() -> Person {
        Person(name: "Nikita",
               surname: "Zakharchenko",
               phoneNumber: "1234556",
               email: "test@gmail.com")
    }
}
