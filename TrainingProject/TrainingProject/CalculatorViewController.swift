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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Removal 
    
    @IBAction func allClear(_ sender: Any) {
    }
    
    @IBAction func backSpace(_ sender: Any) {
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
