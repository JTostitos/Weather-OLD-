//
//  Constants.swift
//  Weather
//
//  Created by Jonathan Tsistinas on 9/28/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "0001911cebe16b8728c037499b068e0d"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"

