//
//  AnimalGridItemView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 02/11/2023.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - PREVIEW

#Preview {
@State var animals: [Animal] = Bundle.main.decode("animals.json")

return AnimalGridItemView(animal: animals[0])
}
