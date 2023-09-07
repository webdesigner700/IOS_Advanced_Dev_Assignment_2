//
//  chicagoActivityList.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct chicagoActivityList: View {
    
    var body: some View {
        
        NavigationView {
            
            List(chicagoActivities) { chicagoActivity in
                
                NavigationLink {
                    chicagoActivityDetail(chicagoActivity: chicagoActivity) // The activityDetail view that shows up is wrapped in a NavigationLink
                } label: {
                    chicagoActivityRow(chicagoActivity: chicagoActivity)
                    
                    // The label for this navigation link is the chicagoActivityRow
                }
                
            // The returned row is wrapped in a NvigationLink, specifying the ActivityDetail view as the destination
            }
        }
        .navigationTitle("Chicago Activities")
    }
}

struct chicagoActivityList_Previews: PreviewProvider {
    static var previews: some View {
        chicagoActivityList()
    }
}
