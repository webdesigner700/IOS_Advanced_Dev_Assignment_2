//
//  losAngelesActivityDetail.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct losAngelesActivityDetail: View {
    
    var losAngelesActivity: Activity
    
    var body: some View {
        
        ScrollView {
            
            MapView(coordinate: losAngelesActivity.activityCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            ActivityImage(image: losAngelesActivity.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack (alignment: .leading){
                Text(losAngelesActivity.name)
                    .font(.title)
                    .fontWeight(.bold)
                    
                HStack {
                    Text(losAngelesActivity.city)
                        .font(.title2)
                    
                    Spacer()
                    
                    Text(losAngelesActivity.state)
                        .font(.title2)
                    
                }
                
                Divider()
                
                Text("Description")
                    .font(.title3)
                
                Text(losAngelesActivity.description)
                    .font(.body)
                    
            }
            .padding()
            
            // Here the Spacer() is added at the bottom to push the content to the top of the screen. The Vstack now has a MapView(), an ActivityImage(), a Vstack with the activity name, city, etc and then a spacer to cover the space until the bottom of the iphone
        }
        .navigationTitle(losAngelesActivity.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct losAngelesActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        losAngelesActivityDetail(losAngelesActivity: losAngelesActivities[0])
    }
}
