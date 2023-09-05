//
//  newYorkCityActivityRow.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct newYorkCityActivityRow: View {
    
    var newYorkCityActivity: Activity
    
    // The first element of the chicagoActivities array shown in the initializer is being decalred here as a stored property
    
    var body: some View {
        HStack {
            
            newYorkCityActivity.image
                .resizable()
                .frame(width: 50, height: 50)
   
            Text(newYorkCityActivity.name)
            
            Spacer()
        }
    }
}

struct newYorkCityActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        newYorkCityActivityRow(newYorkCityActivity: newYorkCityActivities[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
