//
//  CenterModifier.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 02/11/2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
