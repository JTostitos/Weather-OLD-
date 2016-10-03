//
//  Constants.swift
//  Weather
//
//  Created by Jonathan Tsistinas on 9/28/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let CITY = "q="
let COUNTRY = ","
let APP_ID = "&appid="
let API_KEY = "0001911cebe16b8728c037499b068e0d"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(CITY)palmcoast\(COUNTRY)us\(APP_ID)\(API_KEY)"

//http://api.openweathermap.org/data/2.5/weather?lat=-36&lon=123&appid=0001911cebe16b8728c037499b068e0d

//http://api.openweathermap.org/data/2.5/weather?q=palmcoast,us&appid=0001911cebe16b8728c037499b068e0d
