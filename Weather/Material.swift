//
//  Material.swift
//  Weather
//
//  Created by Jonathan Tsistinas on 10/4/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import UIKit

class Material: UIImageView {
    
    override func awakeFromNib() {
        
        layer.cornerRadius = 25
        //layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        
        //layer.shadowOpacity = 0.8
        //layer.shadowRadius = 5.0
        //layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}
