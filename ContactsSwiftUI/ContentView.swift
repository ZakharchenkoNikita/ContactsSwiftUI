//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import SwiftUI

struct ContentView: View {
    var persons: [Person] = []
    
    var body: some View {
        NavigationView {
            TabView {
                Contacts(persons: persons)
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("Contacts")
                    }
                Numbers(persons: persons)
                    .tabItem {
                        Image(systemName: "phone.circle.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
