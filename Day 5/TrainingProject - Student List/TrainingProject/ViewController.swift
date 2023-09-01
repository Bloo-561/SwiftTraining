//
//  ViewController.swift
//  TrainingProject
//
//  Created by Consultant on 8/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBAction func loginAction(_ sender : Any) {
        guard let  userName = userNameInput.text else {
            return
        }
        guard let password = passwordInput.text else {
            return
        }
        
        if userName == "admin" && password == "admin" {
            self.performSegue(withIdentifier: "loginSuccess", sender: nil)
            print("login success")
        } else {
            print("login fail")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
    }

}

