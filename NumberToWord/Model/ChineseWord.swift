//
//  ChineseWord.swift
//  NumberToWord
//
//  Created by Kun Huang on 11/6/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import Foundation

class ChineseWord {
    
    var simplifiedChinese = ""
    var traditioanlChinese = ""
    
    init(with number: NSNumber) {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        formatter.locale = Locale(identifier: "zh_Hans")
        simplifiedChinese = formatter.string(from: number)!
        
        formatter.locale = Locale(identifier: "zh_Hant")
        traditioanlChinese = formatter.string(from: number)!
    }
    
}
