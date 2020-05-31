//
//  PercentTextFieldDelegate.swift
//  Lesson1Task3
//
//  Created by Andrey on 31.05.2020.
//  Copyright © 2020 Andrey Dudka. All rights reserved.
//

import Foundation
import UIKit

class PercentTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        let newTextString = String(newText)
        let digits = CharacterSet.decimalDigits
        var digitText = ""
        for c in (newTextString.unicodeScalars) {
            if digits.contains(UnicodeScalar(c.value)!) {
                digitText.append("\(c)")
            }
        }
        if let numOfPercent = Int(digitText){
            newText = String(numOfPercent)
        } else {
            newText = ""
        }
        textField.text = newText
        return false
    }
}

