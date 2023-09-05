//
//  losAngelesActivityRow.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import SwiftUI

struct losAngelesActivityRow: View {
    
    var losAngelesActivity: Activity
    
    // The first element of the chicagoActivities array shown in the initializer is being decalred here as a stored property
    
    var body: some View {
        HStack {
            
            losAngelesActivity.image
                .resizable()
                .frame(width: 50, height: 50)
   
            Text(losAngelesActivity.name)
            
            Spacer()
        }
    }
}

struct losAngelesActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        losAngelesActivityRow(losAngelesActivity: losAngelesActivities[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
