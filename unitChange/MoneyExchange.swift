//
//  MoneyExchange.swift
//  unitChange
//
//  Created by juri on 2023/12/01.
//

import Foundation

class MoneyExchange {
    var money: Double = 0.0
    
    func usd() -> Double {
        return money * 0.00077
    }
    
    func jpy() -> Double {
        return money * 0.11
    }
    
    func eur() -> Double {
        return money * 0.00071
    }
    
    func cny() -> Double {
        return money * 0.0054
    }
    
    func thb() -> Double {
        return money * 0.027
    }
}
