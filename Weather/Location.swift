//
//  Location.swift
//  Weather
//
//  Created by Jonathan Tsistinas on 10/4/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import Foundation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
