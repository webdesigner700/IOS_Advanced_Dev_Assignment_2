//
//  MapView.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    // In the above line, a coordintae property is added and the preview provider is updated to pass a fixed coordinate on line 40
    
    @State private var region = MKCoordinateRegion()
    
    // Here, a private state variable that holds the region information for the map is created
    
    // The @State attribute is used to estawdaa blish a source of truth for data in your app that you can modify from one or more views. SwiftUI manages the underlyign storage and automatically updates the views that depend on this @State variable value

    var body: some View {
        Map(coordinateRegion: $region) // The map shows the coordinate state variable coordinate "region" which is updated in the view modifier function "onAppear". Everytime the region coordinates change, the onAppear modifier triggers a calculation of the region based on the current coordinate.
            .onAppear() {
                setRegion(coordinate)
            }
        
        
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
    }
    
    // This function updates the region based on a coordinate value that is passed in as a parameter
}




struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
