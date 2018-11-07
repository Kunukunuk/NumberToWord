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
    @IBOutlet weak var simplifiedChineseLabel: UILabel!
    @IBOutlet weak var traditionalChineseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func convertNum(_ sender: UIButton) {
        
        let isNumber = Int(numberEntered.text!)
        if (isNumber != nil) {
            
            let nsNum = NSNumber(value: isNumber!)
            let english = EnglishWord(with: nsNum)
            let chinese = ChineseWord(with: nsNum)
            
            englishWord.text = english.english
            simplifiedChineseLabel.text = chinese.simplifiedChinese
            traditionalChineseLabel.text = chinese.traditioanlChinese
            
        } else {
            englishWord.text = "Not a valid integer"
            simplifiedChineseLabel.text = "不是有效的整数"
            traditionalChineseLabel.text = "不是有效的整數"
        }
        
    }

}

