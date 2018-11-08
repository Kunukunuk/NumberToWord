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
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        english = formatter.string(from: number)!
        
        if english.contains("point") {
            numberWithDecimal(with: number)
        }
    }
    
    func numberWithDecimal(with number: NSNumber) {
        
        let doubleNumber = String( Double(truncating: number) )
        let numArray = doubleNumber.components(separatedBy: ".")
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        var afterDecimal = ""
        if let integerNumber = Int(numArray[1]) {
            afterDecimal = formatter.string(from: NSNumber(value: integerNumber))! + " " + decimalWords[numArray[1].count - 1]
        }
        
        print(afterDecimal)
    }
    
}
