//
//  CreditsView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 02/11/2023.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright Robert Petras
    All right reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

// MARK: - PREVIEW

#Preview {
    CreditsView()
        .previewLayout(.sizeThatFits)
        .padding()
}
