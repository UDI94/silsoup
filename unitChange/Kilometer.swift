//
//  Kilometer.swift
//  unitChange
//
//  Created by woong on 12/1/23.
//

import Foundation

class Kilometer {
    var length: Double = 0.0
    
    func meter() -> Double {
        let meter: Double = length * 1000.0
        return meter
    }
    
    func centimeter() -> Double {
        return meter() * 100.0
    }
    
    func millimeter() -> Double {
        return centimeter() * 10.0
    }
}
