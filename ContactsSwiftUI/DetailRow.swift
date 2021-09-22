//
//  DetailRow.swift
//  ContactsSwiftUI
//
//  Created by Nikita on 22.09.21.
//

import SwiftUI

struct DetailRow: View {

    let image: Image
    let text: String
    
    var body: some View {
        HStack {
            image
            Text(text)
        }
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(image: Image(systemName: "person.fill"),
                  text: "Nikita")
    }
}
