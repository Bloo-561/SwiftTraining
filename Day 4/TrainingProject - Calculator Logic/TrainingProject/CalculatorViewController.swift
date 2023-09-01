//
//  CalculatorViewController.swift
//  TrainingProject
//
//  Created by Consultant on 8/31/23.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var calcQuestion: UILabel!
    @IBOutlet weak var calcAnswer: UILabel!
    
    var line : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()

        // Do any additional setup after loading the view.
    }
    
    // All Clear Function //
    
    func clearAll() {
        line = ""
        calcQuestion.text = ""
        calcAnswer.text = ""
    }
    
    // Removal 
    
    @IBAction func allClear(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backSpace(_ sender: Any) {
        if(!line.isEmpty) {
            line.removeLast()
            calcQuestion.text = line
        }
    }
    
    // Add to line //
    func addtoLine(value: String) {
        line += value
        calcQuestion.text = line
    }
    
    // Special Symbols
    
    @IBAction func par(_ sender: Any) {
        if (line.contains("(")) {
            addtoLine(value: ")")
        } else {
            addtoLine(value: "(")
        }
    }
    
    @IBAction func per(_ sender: Any) {
        addtoLine(value: "%")
    }
    
    @IBAction func demical(_ sender: Any) {
        addtoLine(value: ".")
    }
    
    // Equations
    
    @IBAction func div(_ sender: Any) {
        addtoLine(value: "/")
    }
    
    @IBAction func multiply(_ sender: Any) {
        addtoLine(value: "*")
    }
    
    @IBAction func subtract(_ sender: Any) {
        addtoLine(value: "-")
    }
    
    @IBAction func add(_ sender: Any) {
        addtoLine(value: "+")
    }
    
    // Equal
    
    @IBAction func equal(_ sender: Any) {
        
        let checkPercent = line.replacingOccurrences(of: "%", with: "*0.01")
        let expression = NSExpression(format: checkPercent)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calcAnswer.text = resultString
    }
    
    func formatResult(result: Double)-> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    // Numbers
    
    @IBAction func zero(_ sender: Any) {
        addtoLine(value: "0")
    }
    
    @IBAction func one(_ sender: Any) {
        addtoLine(value: "1")
    }
    
    @IBAction func two(_ sender: Any) {
        addtoLine(value: "2")
    }
    
    @IBAction func three(_ sender: Any) {
        addtoLine(value: "3")
    }
    
    @IBAction func four(_ sender: Any) {
        addtoLine(value: "4")
    }
    
    @IBAction func five(_ sender: Any) {
        addtoLine(value: "5")
    }
    
    @IBAction func six(_ sender: Any) {
        addtoLine(value: "6")
    }
    
    @IBAction func seven(_ sender: Any) {
        addtoLine(value: "7")
    }
    
    @IBAction func eight(_ sender: Any) {
        addtoLine(value: "8")
    }
    
    @IBAction func nine(_ sender: Any) {
        addtoLine(value: "9")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
