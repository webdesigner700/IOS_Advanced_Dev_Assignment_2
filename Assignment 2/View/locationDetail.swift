//
//  Location Detail.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct locationDetail: View {
    
    var location: Location
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                MapView(coordinate: location.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                
                LocationImage(image: location.image)
                    .offset(y: -140)
                    .padding(.bottom, -140)
                
                VStack (alignment: .leading){
                    
                    Text(location.name)
                        .font(.title)
                        .fontWeight(.bold)
                        
                    HStack {
                        Text(location.state)
                            .font(.title2)
                        
                        Spacer()
                        
                        Text("USA")
                            .font(.title2)
                        
                    }
                    
                    Spacer()

                    
                    Button(action: {
                        
                    }) {
                        Text("Show Activities")
                    }
                    
                    Divider()
                    
                    Text("Description")
                        .font(.title3)
                    
                    Text(location.description)
                        .font(.body)
                    
                }
                .padding()
                
                // Here the Spacer() is added at the bottom to push the content to the top of the screen. The Vstack now has a MapView(), an ActivityImage(), a Vstack with the activity name, city, etc and then a spacer to cover the space until the bottom of the iphone
                
            }
            .padding()
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Location_Detail_Previews: PreviewProvider {
    static var previews: some View {
        locationDetail(location: locations[0])
    }
}
