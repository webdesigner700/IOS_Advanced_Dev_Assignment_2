//
//  Locations.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Location: Hashable, Codable {
    
    var id: Int
    var name: String
    var state: String
    var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    // The imageName property reads the name of the image from the data and the variable "image" will load the Image from the asset catalog
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude
            )
    }
    
    // The locationCoordinate property is useful for interacting with the MapKit framework
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    // A coordinte property is added that conforms to the Corrdinates Structure
    
}
