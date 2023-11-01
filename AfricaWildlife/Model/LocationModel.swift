//
//  LocationModel.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 01/11/2023.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

//var favCoordinatesArray: [CLLocationCoordinate2D]  = [CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)]
