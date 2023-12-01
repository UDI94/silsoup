//
//  MoneyViewController.swift
//  unitChange
//
//  Created by juri on 2023/12/01.
//

import UIKit

class MoneyViewController: UIViewController {

    @IBOutlet weak var moneyTextField: UITextField!
    
    @IBOutlet weak var JPYLabel: UILabel!
    @IBOutlet weak var USDLabel: UILabel!
    @IBOutlet weak var CNYLabel: UILabel!
    @IBOutlet weak var THBLabel: UILabel!
    @IBOutlet weak var EURLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        moneyTextField.text = "0"
        moneyTextField.keyboardType = .decimalPad
    }

    
    @IBAction func moneyExchangeButton(_ sender: UIButton) {
        
        let money: Double = Double(moneyTextField.text ?? "") ?? 0.0
        print("\(money)")
        
        let changeMoney = MoneyExchange()
        changeMoney.money = money
        
        
        USDLabel.text = "\(round(changeMoney.usd()*100)/100) 달러"
        JPYLabel.text = "\(round(changeMoney.jpy()*100)/100) 엔"
        EURLabel.text = "\(round(changeMoney.eur()*100)/100) 유로"
        CNYLabel.text = "\(round(changeMoney.cny()*100)/100) 위안"
        THBLabel.text = "\(round(changeMoney.thb()*100)/100) 바트"
        

//        meterLabel.text = "\(myLength.meter())m"
//        centimeterLabel.text = "\(myLength.centimeter())cm"
//        meilimeterLabel.text = "\(myLength.millimeter())mm"
    }
    
}
