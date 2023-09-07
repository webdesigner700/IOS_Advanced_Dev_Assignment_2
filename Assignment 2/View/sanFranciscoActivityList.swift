//
//  sanFranciscoActivityList.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct sanFranciscoActivityList: View {
    
    var body: some View {
        
        // Here, a list is created that displays the elements of a collection of data and a closure that provides a view for each element in the collection
        
        // The list transforms each element in the collection into a child view by using the supplied closure
        
        NavigationView {
            
            List(sanFranciscoActivities) { sanFranciscoActivity in
                
                NavigationLink {
                    sanFranciscoActivityDetail(sanFranciscoActivity: sanFranciscoActivity) // The activityDetail view that shows up is wrapped in a NavigationLink
                } label: {
                    sanFranciscoActivityRow(sanFranciscoActivity: sanFranciscoActivity)
                    
                    // The label for this navigation link is the chicagoActivityRow
                }
                
            // The returned row is wrapped in a NvigationLink, specifying the ActivityDetail view as the destination
            }
        }
        .navigationTitle("San Francisco Activities")
        
        // The chicagoActivities array is passed as the List initializer. Lists work with Identificable data.
        
        // Data can be made identifiable in two ways. You can pass along with your data a key path to a property that uniquely identifies each elemnt. The second way is to make your data type conform to the Identifiable prototcol.
        
        
        
        
    }
}

struct sanFranciscoActivityList_Previews: PreviewProvider {
    static var previews: some View {
        sanFranciscoActivityList()
    }
}
