//
//  ViewController.swift
//  Weather
//
//  Created by Jonathan Tsistinas on 9/25/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypelabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather: CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        
        currentWeather.downloadWeatherDetails {
            self.downloadForecastData {
            self.updateMainUI()

            }
        }

    }
    
    func downloadForecastData(completed: @escaping DownloadComplete) {
        //Downloading forecast weather data for table view
        
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(forecastURL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                        print(obj)
                    }
                    
                }
                
            }
            completed()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        
        return cell
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLabel.text =  "\(currentWeather.currentTemp)"
        currentWeatherTypelabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather._cityName
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }
}

