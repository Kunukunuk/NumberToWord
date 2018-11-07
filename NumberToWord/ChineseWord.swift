//
//  ChineseWord.swift
//  NumberToWord
//
//  Created by Kun Huang on 11/6/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import Foundation

class ChineseWord {
    
    var chinese = ""
    
    init(with number: NSNumber) {
        let userLanguage = Locale(identifier: "zh_Hans_CN")
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = userLanguage
        
        chinese = formatter.string(from: number)!
    }
}
