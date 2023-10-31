//
//  VideoModel.swift
//  AfricaWildlife
//
//  Created by Lexter Tapawan on 31/10/2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
