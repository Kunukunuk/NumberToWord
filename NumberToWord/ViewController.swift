//
//  ViewController.swift
//  NumberToWord
//
//  Created by Kun Huang on 5/1/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberEntered: UITextField!
    @IBOutlet weak var englishWord: UILabel!
    @IBOutlet weak var chineseWord: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertNum(_ sender: UIButton) {
        
        let isNumber = Int(numberEntered.text!)
        if (isNumber != nil) {
            
            let english = EnglishWord()
            print(english.toEnglish(num: isNumber!))
            
        } else {
            englishWord.text = "Not a valid integer"
            chineseWord.text = "不是有效的整数"
        }
        
    }
    
    func lengthOfNumber(num: Int) -> Int{
        
        if (num < 10 ) {
            return 1
        } else {
            return 1 +  lengthOfNumber(num: num/10)
        }
    }


}

