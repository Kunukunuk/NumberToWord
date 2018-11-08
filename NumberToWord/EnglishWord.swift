//
//  EnglishWord.swift
//  NumberToWord
//
//  Created by Kun Huang on 5/6/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import Foundation

class EnglishWord {
    
    let decimalWords = ["tenths", "hundredths", "thousandths", "ten-thousandths", "hundred-thousandths", "millionths", "ten-millionths", "hundred-millionths", "billionths", "ten-billionths", "hundred-billionths"]
    var english = ""
    
    init(with number: NSNumber) {
        
        let doubleNumber = String( Double(truncating: number) )
        let numArray = doubleNumber.components(separatedBy: ".")
        
        var beforeDecimal = ""
        var afterDecimal = ""
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        for (index, number) in numArray.enumerated() {
            if let integerNumber = Int(number) {
                let nsInt = NSNumber(value: integerNumber)
                if index == 0 {
                    beforeDecimal = formatter.string(from: nsInt)!
                } else if index == 1 {
                    if number.count > decimalWords.count {
                        afterDecimal = formatter.string(from: nsInt)! + "work in process"
                    } else {
                        afterDecimal = formatter.string(from: nsInt)! + " " + decimalWords[number.count - 1]
                    }
                }
            }
        }
        
        english = beforeDecimal + " and " + afterDecimal
        
    }
    
}
