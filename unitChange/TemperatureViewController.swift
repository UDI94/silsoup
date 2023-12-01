//
//  TemperatureViewController.swift
//  unitChange
//
//  Created by Kang on 12/1/23.
//

import UIKit

class TemperatureViewController: UIViewController {
    
    @IBOutlet weak var mainTextField: UITextField!
    // 섭씨 레이블
    @IBOutlet weak var celciusLabel: UILabel!
    // 화씨 레이블
    @IBOutlet weak var fahrenheitLabel: UILabel!
    // 켈빈 레이블
    @IBOutlet weak var kelvinLabel: UILabel!

    let temepratureModel = Temperature()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setMain()
    }
    
    func setMain() {
        mainTextField.placeholder = "섭씨를 기준으로 온도를 입력해주세요"
    }
        
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        // 텍스트를 입력하지 않았을 때(nil)
        guard let lableText = mainTextField.text else {
            celciusLabel.text = "숫자를 입력하고 버튼을 눌러주세요"
            fahrenheitLabel.text = "숫자를 입력하고 버튼을 눌러주세요"
            kelvinLabel.text = "숫자를 입력하고 버튼을 눌러주세요"
            return
        }
        
        // 형변환 실패 시(숫자를 입력하지 않음)
        guard let doubleText = Double(lableText) else {
            celciusLabel.text = "숫자를 입력하고 버튼을 눌러주세요"
            fahrenheitLabel.text = "숫자를 입력하고 버튼을 눌러주세요"
            kelvinLabel.text = "숫자를 입력하고 버튼을 눌러주세요"
            return
        }
        
        // temepratureModel 온도 설정
        temepratureModel.temperature = doubleText
        
        // 온도 구해서 레이블에 넣기
        celciusLabel.text = String(temepratureModel.celsius()) + "°C"
        fahrenheitLabel.text = String(temepratureModel.fahrenheit()) + "°F"
        kelvinLabel.text = String(temepratureModel.kelvin()) + "K"
    }
}
