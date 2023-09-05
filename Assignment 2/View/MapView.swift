//
//  MapView.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    
    // Here, a private state variable that holds the region information for the map is created
    
    // The @State attribute is used to esta blish a source of truth for data in your app that you can modify from one or more views. SwiftUI manages the underlyign storage and automatically updates the views that depend on this @State variable value

    
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
