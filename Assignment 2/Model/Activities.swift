//
//  Activities.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import Foundation

struct Activity: Hashable, Codable {
    
    var id: Int
    var name: String
    var city: String
    var state: String
    var description: String
}
