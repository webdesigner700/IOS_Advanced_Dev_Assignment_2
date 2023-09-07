//
//  LocationImage.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct LocationImage: View {
    
    var image: Image
    
    var body: some View {
        
        image
            .resizable()
            .frame(width: 300, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

struct LocationImage_Previews: PreviewProvider {
    static var previews: some View {
        LocationImage(image: Image("sanFrancisco"))
    }
}
