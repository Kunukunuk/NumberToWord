//
//  EnglishWord.swift
//  NumberToWord
//
//  Created by Kun Huang on 5/6/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import Foundation

class EnglishWord {
    
    var english = ""
    
    init(with number: NSNumber) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        english = formatter.string(from: number)!
    }
    
}
