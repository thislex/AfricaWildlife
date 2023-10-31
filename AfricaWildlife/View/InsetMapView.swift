//
//  InsetMapView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 31/10/2023.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - PROPERTIES
    
    @State private var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), // initial location
        span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0) // initial zoom
    ))
    
    // MARK: - BODY
    
    var body: some View {
        Map(position: $cameraPosition)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    )
                } //: NAVIGATION
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - PREVIEW

#Preview {
    InsetMapView()
}
