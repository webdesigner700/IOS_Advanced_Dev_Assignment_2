//
//  ActivityData.swift
//  Assignment 2
//
//  Created by vinay bayyapunedi on 05/09/23.
//

import Foundation


var locations: [Location] = load("locationsData.json")

var sanFranciscoActivities: [Activity] = load("sanFranciscoActivityData.json")

var losAngelesActivities: [Activity] = load("loasAngelesActivityData.json")

var newYorkCityActivities: [Activity] = load("newYorkCityActivityData.json")

var chicagoActivities: [Activity] = load("chicagoActivityData.json")

// The load methods fetches JSON data with a given name from the app's main bundle

// An array of activities for San Francisco is initialized from sanFraciscoActivityData.json



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
