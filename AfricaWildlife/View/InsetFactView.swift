//
//  InsetFactView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 31/10/2023.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

// MARK: - PREVIEW

#Preview {
@State var animals: [Animal] = Bundle.main.decode("animals.json")
return InsetFactView(animal: animals[0])
}
