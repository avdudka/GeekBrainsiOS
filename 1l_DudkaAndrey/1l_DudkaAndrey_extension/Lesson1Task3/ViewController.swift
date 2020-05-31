//
//  ViewController.swift
//  Lesson1Task3
//
//  Created by Andrey on 31.05.2020.
//  Copyright © 2020 Andrey Dudka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var depositAmount: UITextField!
    @IBOutlet weak var depositPercent: UITextField!
    
    @IBOutlet weak var resultAmountWithCap: UILabel!
    @IBOutlet weak var resultAmountNoCap: UILabel!
    
    var dollarDelegate = DollarTextFieldDelegate()
    var percentDelegate = PercentTextFieldDelegate()
    
    var duration = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        depositAmount.text = ""
        depositAmount.delegate = self.dollarDelegate
        depositPercent.text = ""
        depositPercent.delegate = self.percentDelegate
        resultAmountNoCap.text = "0.0"
        resultAmountWithCap.text = "0.0"
    }
    
    @IBAction func countPercent() {
        if depositAmount.text != "" && depositPercent.text != "" {
            let amount = Double(depositAmount.text!)
            let percent = Double(depositPercent.text!)
            resultAmountWithCap.text = String(countDepositWCap(amount: amount!, percent: percent!))
            resultAmountNoCap.text = String(countDepositWOCap(amount: amount!, percent: percent!))
        }
        self.view.endEditing(true)
    }
    
    func countDepositWCap(amount: Double, percent: Double) -> Double {
        var newAmount = amount
        for _ in 1...5 {
            newAmount = newAmount + newAmount*percent/100}
        return round(newAmount*100)/100
    }
    
    func countDepositWOCap(amount: Double, percent: Double) -> Double {
        let newAmount = amount + 5 * amount * percent/100
        return round(newAmount*100)/100
    }
    
}
