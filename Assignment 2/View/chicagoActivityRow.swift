//
//  chicagoActivityRow.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct chicagoActivityRow: View {
    
    var chicagoActivity: Activity
    
    // The first element of the chicagoActivities array shown in the initializer is being decalred here as a stored property
    
    var body: some View {
        HStack {
            
            chicagoActivity.image
                .resizable()
                .frame(width: 50, height: 50)
   
            Text(chicagoActivity.name)
            
            Spacer()
        }
    }
}

struct chicagoActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        chicagoActivityRow(chicagoActivity: chicagoActivities[0])
            .previewLayout(.fixed(width: 300, height: 70))
        
        // The first element of the chicagoActivity array is being passed as an initializer
    }
}
