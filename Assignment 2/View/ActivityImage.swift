//
//  ActivityImage.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct ActivityImage: View {
    var body: some View {
        
        Image("alcatrazIsland")
            .resizable()
            .frame(width: 300, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

struct ActivityImage_Previews: PreviewProvider {
    static var previews: some View {
        ActivityImage()
    }
}
