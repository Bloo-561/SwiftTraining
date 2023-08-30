//
//  ViewController.swift
//  Day 2 - Project 2
//
//  Created by Consultant on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var calcProblem: UILabel!
    @IBOutlet var calcAnswer: UILabel!
    
    var result : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
    func clearAll() {
        result = ""
        calcProblem.text = ""
        calcAnswer.text = ""
    }
    
    // Clear Buttons
    
    @IBAction func allClear(_ sender: Any) {
        clearAll()
    }
    @IBAction func backClear(_ sender: Any) {
        if(!result.isEmpty) {
            result.removeLast()
            calcProblem.text = result
        }
    }
    
    func math(value : String) {
        result += value
        calcProblem.text = result
    }
    
    // Special Buttons
    
    @IBAction func squareRoot(_ sender: Any) {
        math(value: "√")
    }
    @IBAction func pi(_ sender: Any) {
        math(value: "π")
    }
    @IBAction func exponent(_ sender: Any) {
        math(value: "^")
    }
    @IBAction func factorial(_ sender: Any) {
        math(value: "!")
    }
    @IBAction func par(_ sender: Any) {
        math(value: "%")
    }
    @IBAction func percentage(_ sender: Any) {
        math(value: "%")
    }
    
    // Basic Functions
    @IBAction func add(_ sender: Any) {
        math(value: "+")
    }
    @IBAction func sub(_ sender: Any) {
        math(value: "-")
    }
    @IBAction func multipy(_ sender: Any) {
        math(value: "x")
    }
    @IBAction func divide(_ sender: Any) {
        math(value: "÷")
    }
    @IBAction func decimal(_ sender: Any) {
        math(value: ".")
    }
    @IBAction func equal(_ sender: Any) {
        let expression = NSExpression(format: result)
        let solution = expression.expressionValue(with: 0, context: nil) as! Double
        calcAnswer.text = String(solution)
    }
    
    // Number Functions
    @IBAction func zero(_ sender: Any) {
        math(value: "0")
    }
    @IBAction func one(_ sender: Any) {
        math(value: "1")
    }
    @IBAction func two(_ sender: Any) {
        math(value: "2")
    }
    @IBAction func three(_ sender: Any) {
        math(value: "3")
    }
    @IBAction func four(_ sender: Any) {
        math(value: "4")
    }
    @IBAction func five(_ sender: Any) {
        math(value: "5")
    }
    @IBAction func six(_ sender: Any) {
        math(value: "6")
    }
    @IBAction func seven(_ sender: Any) {
        math(value: "7")
    }
    @IBAction func eight(_ sender: Any) {
        math(value: "8")
    }
    @IBAction func nine(_ sender: Any) {
        math(value: "9")
    }
    
    
    
    
}


