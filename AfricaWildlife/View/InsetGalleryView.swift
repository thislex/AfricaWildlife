//
//  InsetGalleryView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 30/10/2023.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
@State var animals: [Animal] = Bundle.main.decode("animals.json")
return InsetGalleryView(animal: animals[0])
}
