//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Henry Paulino on 8/4/18.
//  Copyright © 2018 Henry Paulino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var operationInput: UILabel!

    var calcNumber: Int = 0
    var currentNumber: Int = 0
    var calc: Calculate = Calculate()
    var plusTouched: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        operationInput.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func appendStr(str: String) {
        var operationText = operationInput.text!

        if plusTouched == true {
            operationText = ""
        }
        
        if operationText != "0" {
            let text = operationText + str
            currentNumber = calc.toInt(str: text)
            operationInput.text = text
        } else {
            operationInput.text = str
        }
    }
    
    func reset() {
        calcNumber = 0
        currentNumber = 0
        operationInput.text = "0"
        plusTouched = false
    }

    // Buttons
    @IBAction func one(_ sender: Any) {
        appendStr(str: "1")
    }
    
    @IBAction func two(_ sender: Any) {
        appendStr(str: "2")
    }
    
    @IBAction func three(_ sender: Any) {
        appendStr(str: "3")
    }
    
    @IBAction func four(_ sender: Any) {
        appendStr(str: "4")
    }
    
    @IBAction func delOperation(_ sender: Any) {
        operationInput.text = ""
        reset()
    }
    
    @IBAction func plus(_ sender: Any) {
        plusTouched = true
        
        if currentNumber != 0 {
            calcNumber = currentNumber
            currentNumber = 0
        }
    }

    @IBAction func subtract(_ sender: Any) {
        appendStr(str: "-")
    }

    @IBAction func result(_ sender: Any) {
        let str = operationInput.text!
        currentNumber = calc.toInt(str: str)
        let result = calc.sum(a: calcNumber, b: currentNumber)
        calcNumber = result
        operationInput.text = String(result)
    }
}

