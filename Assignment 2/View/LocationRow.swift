//
//  locationRow.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct locationRow: View {
    
    var location: Location
    
    var body: some View {
        
        HStack {
            
            location.image
                .resizable()
                .frame(width: 50, height: 50)
   
            Text(location.name)
            
            Spacer()
        }
    }
}

struct locationRow_Previews: PreviewProvider {
    static var previews: some View {
        locationRow(location: locations[0])
    }
}
