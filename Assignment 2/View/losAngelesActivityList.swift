//
//  losAngelesActivityList.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct losAngelesActivityList: View {
    
    var body: some View {
        
        // Here, a list is created that displays the elements of a collection of data and a closure that provides a view for each element in the collection
        
        // The list transforms each element in the collection into a child view by using the supplied closure
        
        NavigationView {
            
            List(losAngelesActivities) { losAngelesActivity in
                
                NavigationLink {
                    losAngelesActivityDetail(losAngelesActivity: losAngelesActivity) // The activityDetail view that shows up is wrapped in a NavigationLink
                } label: {
                    losAngelesActivityRow(losAngelesActivity: losAngelesActivity)
                    
                    // The label for this navigation link is the chicagoActivityRow
                }
                
            // The returned row is wrapped in a NvigationLink, specifying the ActivityDetail view as the destination
            }
        }
        .navigationTitle("Los Angeles Activities")
    }
}

struct losAngelesActivityList_Previews: PreviewProvider {
    static var previews: some View {
        losAngelesActivityList()
    }
}
