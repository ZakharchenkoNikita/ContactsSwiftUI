//
//  DataManager.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Nikita",
                 "Alex",
                 "Wlad",
                 "Mike",
                 "Алиса"]
    
    let surnames = ["Cook",
                    "Zakharchenko",
                    "Scharabura",
                    "Kravchenko",
                    "Матвеева"]
    
    let emails = ["aaa@gmail.com",
                  "bbb@mail.ru",
                  "ccc@yandex.ua",
                  "abc@yandex.ru",
                  "baucrufoumetta-6469@yopmail.com"]
    
    let phoneNumbers = ["64(6606)899-75-84",
                        "991(602)958-82-64",
                        "135(3102)995-83-37",
                        "022(956)879-72-81",
                        "29(1808)369-28-66631"]

    private init() {}
}
