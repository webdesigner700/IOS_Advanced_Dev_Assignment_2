//
//  ContentView.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct ContentView: View { // This structure conforms to the View protocol and describes the view's content and layout.
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            ActivityImage()
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack (alignment: .leading){
                Text("Golden Gate Bridge")
                    .font(.title)
                    .fontWeight(.bold)
                    
                HStack {
                    Text("San Francisco")
                        .font(.title2)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.title2)
                    
                }
                
                Divider()
                
                Text("About Golden Gate bridge")
                    .font(.title3)
                    
            }
            .padding()
            
            Spacer()
            
            // Here the Spacer() is added at the bottom to push the content to the top of the screen. The Vstack now has a MapView(), an ActivityImage(), a Vstack with the activity name, city, etc and then a spacer to cover the space until the bottom of the iphone
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider { // This structure decalres a preview for that view
    static var previews: some View {
        ContentView()
    }
}
