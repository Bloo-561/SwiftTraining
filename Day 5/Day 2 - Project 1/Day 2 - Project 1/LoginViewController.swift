//
//  LoginViewController.swift
//  StudentTableView
//
//  Created by Consultant on 8/29/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        guard let userName = userNameTextField.text else { 
            return
        }
        guard let password = passwordTextField.text else {
            return
        }
        
        if userName == "admin" && password == "admin" {
            self.performSegue(withIdentifier: "loginSuccess", sender: nil)
        } else {
            print("login fail")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let viewController =  segue.destination as? ViewController
         
         viewController?.userName = userNameTextField.text
    }
}

