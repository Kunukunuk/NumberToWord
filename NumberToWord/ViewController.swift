//
//  ViewController.swift
//  NumberToWord
//
//  Created by Kun Huang on 5/1/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var numberEntered: UITextField!
    @IBOutlet weak var englishWord: UILabel!
    @IBOutlet weak var simplifiedChineseLabel: UILabel!
    @IBOutlet weak var traditionalChineseLabel: UILabel!
    @IBOutlet weak var languagePicker: UIPickerView!
    @IBOutlet weak var chosenLanguage: UILabel!
    var pickerData: [(language_Name: String, language_ID: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        languagePicker.delegate = self
        languagePicker.dataSource = self
        
        getDataFromList()
    }

    @IBAction func convertNum(_ sender: UIButton) {
        
        let isNumber = Double(numberEntered.text!)
        if (isNumber != nil) {
            
            let nsNum = NSNumber(value: isNumber!)
            let english = EnglishWord(with: nsNum)
            let chinese = ChineseWord(with: nsNum)
            
            let selected = pickerData[languagePicker.selectedRow(inComponent: 0)]
            let choseLang = ChosenLanguage(with: nsNum, languageID: selected.language_ID)
            
            englishWord.text = english.english
            simplifiedChineseLabel.text = chinese.simplifiedChinese
            traditionalChineseLabel.text = chinese.traditioanlChinese
            chosenLanguage.text = choseLang.chosenLanguage
            
        } else {
            englishWord.text = "Not a valid integer"
            simplifiedChineseLabel.text = "不是有效的整数"
            traditionalChineseLabel.text = "不是有效的整數"
            chosenLanguage.text = "Not a valid integer"
        }
        
    }
    
    func getDataFromList() {
        if let path = Bundle.main.path(forResource: "LanguageList", ofType: "plist"),
            let myDict = NSDictionary(contentsOfFile: path){
            for (key, value) in myDict {
                pickerData.append((value as! String, key as! String))
            }
        }
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row].language_Name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenLanguage.text = pickerData[row].language_Name
        let isNumber = Double(numberEntered.text!)
        
        if (isNumber != nil) {
            
            let nsNum = NSNumber(value: isNumber!)
            let choseLang = ChosenLanguage(with: nsNum, languageID: pickerData[row].language_ID)
            
            chosenLanguage.text = choseLang.chosenLanguage
            
            
        } else {
            chosenLanguage.text = "error"
        }
    }
}

