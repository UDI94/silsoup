//
//  WeightVeiwController.swift
//  unitChange
//
//  Created by YUJIN JEON on 12/1/23.
//

import UIKit

class WeightViewController: UIViewController {
    
    @IBOutlet weak var weightInputTextField: UITextField!
    
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var gramLabel: UILabel!
    @IBOutlet weak var tonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        weightInputTextField.text = ""
        weightInputTextField.keyboardType = .decimalPad
    }
    
    @IBAction func convert(_ sender: Any) {
        
        let weight: Double = Double(weightInputTextField.text ?? "") ?? 0.0
        print("\(weight)")
        
        let myWeight = WeightModel()
        myWeight.weight = weight
        
        gramLabel.text = "\(myWeight.gram())g"
        tonLabel.text = "\(myWeight.ton())ton"
    }
}
