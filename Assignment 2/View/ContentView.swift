//
//  ContentView.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct ContentView: View { // This structure conforms to the View protocol and describes the view's content and layout.
    var body: some View {
        VStack (alignment: .leading){
            Text("Golden Gate Bridge")
                .font(.headline)
                
            HStack {
                Text("San Francisco")
                    .font(.subheadline)
                
                Spacer()
                
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider { // This structure decalres a preview for that view
    static var previews: some View {
        ContentView()
    }
}
