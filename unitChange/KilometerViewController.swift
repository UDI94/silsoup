//
//  KilometerViewController.swift
//  unitChange
//
//  Created by woong on 12/1/23.
//

import UIKit

class KilometerViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var meterLabel: UILabel!
    @IBOutlet weak var cmLabel: UILabel!
    @IBOutlet weak var mmLabel: UILabel!
    
    let kilometer = Kilometer()
    
    @IBAction func convertPressed(_ sender: UIButton) {
        
        let length = Double(textField.text ?? "") ?? 0.0
        
        kilometer.length = length
        meterLabel.text = "\(kilometer.meter())m"
        cmLabel.text = "\(kilometer.centimeter())m"
        mmLabel.text = "\(kilometer.millimeter())m"
        
    }
}
