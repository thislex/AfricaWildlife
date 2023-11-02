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
                Marker(item.name, systemImage: "mappin.and.ellipse", coordinate: item.location)
            }
        } //: MAP
//        .overlay(
//            HStack {
//                Image("compass")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 48, height: 48, alignment: .center)
//                
//                VStack(alignment: .leading, spacing: 3) {
//                    HStack {
//                        Text("Latitude")
//                            .font(.footnote)
//                            .fontWeight(.bold)
//                            .foregroundStyle(.accent)
//                        Spacer()
//                        Text("\(cameraPosition.region?.center.latitude)")
//                            .font(.footnote)
//                            .foregroundStyle(.white)
//                    }
//                    Divider()
//                    
//                    HStack {
//                        Text("Longitude")
//                            .font(.footnote)
//                            .fontWeight(.bold)
//                            .foregroundStyle(.accent)
//                        Spacer()
//                        Text("\(cameraPosition.)")
//                            .font(.footnote)
//                            .foregroundStyle(.white)
//                    }
//                }
//            } //: HSTACK
//                .padding(.vertical, 12)
//                .padding(.horizontal, 16)
//                .background(
//                    Color.black
//                        .clipShape(RoundedRectangle(cornerRadius: 8))
//                        .opacity(0.6)
//                )
//                .padding()
//            , alignment: .top
//        )
    }
}


// MARK: - PREVIEW

#Preview {
    MapView()
}
