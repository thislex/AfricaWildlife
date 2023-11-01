//
//  MapView.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 28/10/2023.

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var cameraPosition: MapCameraPosition = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MapCameraPosition.region(MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel))
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    
    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(locations, id: \.id) { item in
                Marker(item.name, coordinate: item.location)
                    .tint(.accent)
            }
        }
    }
}


// MARK: - PREVIEW

#Preview {
    MapView()
}
