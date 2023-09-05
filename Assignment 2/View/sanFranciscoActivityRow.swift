//
//  sanFranciscoActivityRow.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct sanFranciscoActivityRow: View {
    
    var sanFranciscoActivity: Activity
    
    // The first element of the chicagoActivities array shown in the initializer is being decalred here as a stored property
    
    var body: some View {
        HStack {
            
            sanFranciscoActivity.image
                .resizable()
                .frame(width: 50, height: 50)
   
            Text(sanFranciscoActivity.name)
            
            Spacer()
        }
    }
}

struct sanFranciscoActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        sanFranciscoActivityRow(sanFranciscoActivity: sanFranciscoActivities[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
