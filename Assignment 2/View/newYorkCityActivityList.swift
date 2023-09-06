//
//  newYorkCityActivityList.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 06/09/23.
//

import SwiftUI

struct newYorkCityActivityList: View {
    var body: some View {
        
        List(newYorkCityActivities) {
            newYorkCityActivity in newYorkCityActivityRow(newYorkCityActivity: newYorkCityActivity)
        }
    }
}

struct newYorkCityActivityList_Previews: PreviewProvider {
    static var previews: some View {
        newYorkCityActivityList()
    }
}
