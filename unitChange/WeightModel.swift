//
//  WeightModel.swift
//  unitChange
//
//  Created by YUJIN JEON on 12/1/23.
//

import Foundation

class WeightModel {

    var weight: Double = 0.0
    
    func kilogram() -> Double {
        return weight
    }
    
    func gram() -> Double {
        var gram: Double = weight * 1000.0
        return gram
    }
    
    func ton() -> Double {
        return kilogram() / 1000.0
    }
}
