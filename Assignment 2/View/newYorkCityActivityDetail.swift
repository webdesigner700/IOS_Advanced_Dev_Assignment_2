//
//  newYorkCityActivityDetail.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct newYorkCityActivityDetail: View {
    
    var newYorkCityActivity: Activity
    
    var body: some View {
        
        ScrollView {
            
            MapView(coordinate: newYorkCityActivity.activityCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            ActivityImage(image: newYorkCityActivity.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack (alignment: .leading){
                Text(newYorkCityActivity.name)
                    .font(.title)
                    .fontWeight(.bold)
                    
                HStack {
                    Text(newYorkCityActivity.city)
                        .font(.title2)
                    
                    Spacer()
                    
                    Text(newYorkCityActivity.state)
                        .font(.title2)
                    
                }
                
                Divider()
                
                Text("Description")
                    .font(.title3)
                
                Text(newYorkCityActivity.description)
                    .font(.body)
                    
            }
            .padding()
            
            // Here the Spacer() is added at the bottom to push the content to the top of the screen. The Vstack now has a MapView(), an ActivityImage(), a Vstack with the activity name, city, etc and then a spacer to cover the space until the bottom of the iphone
        }
    }
}

struct newYorkCityActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        newYorkCityActivityDetail(newYorkCityActivity: newYorkCityActivities[0])
    }
}
