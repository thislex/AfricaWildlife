//
//  ExternalWebLinkView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 31/10/2023.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundStyle(.accent)
            } //: HSTACK
        } //: BOX
    }
}

// MARK: - PREVIEW

#Preview {
@State var animals: [Animal] = Bundle.main.decode("animals.json")
return ExternalWebLinkView(animal: animals[0])
}
