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
        
        List(sanFranciscoActivities) {
            sanFranciscoActivity in sanFranciscoActivityRow(sanFranciscoActivity: sanFranciscoActivity)
        }
        
        // The chicagoActivities array is passed as the List initializer. Lists work with Identificable data.
        
        // Data can be made identifiable in two ways. You can pass along with your data a key path to a property that uniquely identifies each elemnt. The second way is to make your data type conform to the Identifiable prototcol.
        
        
        
        
    }
}

struct sanFranciscoActivityList_Previews: PreviewProvider {
    static var previews: some View {
        sanFranciscoActivityList()
    }
}
