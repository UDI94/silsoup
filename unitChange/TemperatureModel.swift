//
//  OnDoModel.swift
//  unitChange
//
//  Created by Kang on 12/1/23.
//

import Foundation

class Temperature {
    
    // 섭씨(기준)
    var temperature: Double = 0.0

    // 섭씨
    func celsius() -> Double {
        return temperature
    }
    
    // 화씨
    func fahrenheit() -> Double {
        let fahrenheit: Double = (temperature * 9/5) + 32
        return fahrenheit
    }
    
    // 켈빈
    func kelvin() -> Double {
        let kelvin: Double = temperature + 273.15
        return kelvin
    }
    
}
