//
//  ChosenLanguage.swift
//  NumberToWord
//
//  Created by Kun Huang on 11/8/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import Foundation

class ChosenLanguage {
    
    var chosenLanguage = ""
    
    init(with number: NSNumber, languageID: String) {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: languageID)
        print(formatter.locale)
        chosenLanguage = formatter.string(from: number)!
        
    }
    
}
