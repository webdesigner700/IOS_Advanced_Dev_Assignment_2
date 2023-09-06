//
//  chicagoActivityList.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct chicagoActivityList: View {
    
    var body: some View {
        
        List(chicagoActivities) {
            chicagoActivity in chicagoActivityRow(chicagoActivity: chicagoActivity)
        }
    }
}

struct chicagoActivityList_Previews: PreviewProvider {
    static var previews: some View {
        chicagoActivityList()
    }
}
