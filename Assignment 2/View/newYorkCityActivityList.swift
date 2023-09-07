//
//  newYorkCityActivityList.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct newYorkCityActivityList: View {
    var body: some View {
        
        NavigationView {
            
            List(newYorkCityActivities) { newYorkCityActivity in
                
                NavigationLink {
                    newYorkCityActivityDetail(newYorkCityActivity: newYorkCityActivity) // The activityDetail view that shows up is wrapped in a NavigationLink
                } label: {
                    newYorkCityActivityRow(newYorkCityActivity: newYorkCityActivity)
                    
                    // The label for this navigation link is the chicagoActivityRow
                }
                
            // The returned row is wrapped in a NvigationLink, specifying the ActivityDetail view as the destination
            }
        }
        .navigationTitle("New York City Activities")
    }
}

struct newYorkCityActivityList_Previews: PreviewProvider {
    static var previews: some View {
        newYorkCityActivityList()
    }
}
