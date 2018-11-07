//
//  EnglishWord.swift
//  NumberToWord
//
//  Created by Kun Huang on 5/6/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import Foundation

struct EnglishWord {
    
    var english = ""
    
    func toEnglish(num: Int) -> String {

         if (num < 21) {
            switch num {
                case 1:
                    return english + "one"
                case 2:
                    return english + "two"
                case 3:
                    return english + "three"
                case 4:
                    return english + "four"
                case 5:
                    return english + "five"
                case 6:
                    return english + "six"
                case 7:
                    return english + "seven"
                case 8:
                    return english + "eight"
                case 9:
                    return english + "nine"
                case 10:
                    return english + "ten"
                case 11:
                    return english + "eleven"
                case 12:
                    return english + "twelve"
                case 13:
                    return english + "thirteen"
                case 14:
                    return english + "fourteen"
                case 15:
                    return english + "fifteen"
                case 16:
                    return english + "sixteen"
                case 17:
                    return english + "seventeen"
                case 18:
                    return english + "eighteen"
                case 19:
                    return english + "nineteen"
                case 20:
                    return english + "twenty"
                default:
                    return english
            }
        } else if (num < 100) {
            let div = num/10
            switch div {
                case 2:
                    return english + "Twenty-"
                case 3:
                    return english + "Thirty-"
                case 4:
                    return english + "forty-"
                case 5:
                    return english + "fifty-"
                case 6:
                    return english + "sixty-"
                case 7:
                    return english + "seventy-"
                case 8:
                    return english + "eighty-"
                case 9:
                    return english + "ninety-"
                default:
                    return english
            }
        }
        return english
    }
}
