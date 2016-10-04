//
//  Constants.swift
//  Weather
//
//  Created by Jonathan Tsistinas on 9/28/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import Foundation

//Forecast
let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
//Current Weather
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let CITY = "q="
let COUNTRY = ","
//Future Forecast
let MODE = "&mode=JSON&units=metric"
let DAYS_TO_DISPLAY = "&cnt=6"

let APP_ID = "&appid="
let API_KEY = "0001911cebe16b8728c037499b068e0d"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(CITY)palmcoast\(COUNTRY)us\(APP_ID)\(API_KEY)"

let FORECAST_URL = "\(FORECAST_BASE_URL)\(CITY)palmcoast\(COUNTRY)us\(MODE)\(DAYS_TO_DISPLAY)\(APP_ID)\(API_KEY)"



//Longitude and Latitude api Doesnt work \/
//http://api.openweathermap.org/data/2.5/weather?lat=-36&lon=123&appid=0001911cebe16b8728c037499b068e0d


//City and counrty api call works \/
//http://api.openweathermap.org/data/2.5/weather?q=palmcoast,us&appid=0001911cebe16b8728c037499b068e0d


//Alternate api call could be zip code and country \/
//http://api.openweathermap.org/data/2.5/weather?zip=94040,us&appid=b1b15e88fa797225412429c1c50c122a1

//Forecast data api link
//http://api.openweathermap.org/data/2.5/forecast/daily?q=palmcoast,us&mode=JSON&units=metric&cnt=6&appid=0001911cebe16b8728c037499b068e0d
