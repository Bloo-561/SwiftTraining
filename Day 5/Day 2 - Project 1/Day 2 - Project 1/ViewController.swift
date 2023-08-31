//
//  ViewController.swift
//  Day 2 - Project 1
//
//  Created by Consultant on 8/28/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var students : [Student] = []
    var userName : String?
    
    @IBOutlet weak var studentList : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        insertStudent()
        studentList.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt index: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "studentListCell", for: index) as? studentListCell else {
            return UITableViewCell()
        }
        cell.nameLabel.text = students[index.row].name
        cell.dobLabel.text = students[index.row].dob
        cell.emailLabel.text = students[index.row].email
        cell.avatarImage.image = students[index.row].avatarImage
        
        return UITableViewCell()
    }
    
    func insertStudent() {
        for i in(0...9) {
            let student = Student(name: "Student \(i)", email: "techconsulting\(i)@yahoo.com", dob: "\(i)\(i+5)/20\(i+2)", avatarImage: UIImage(named: "student\(i)") ?? UIImage())
                        students.append(student)
        }
    }
}

class Student {
    let name: String
    let email: String
    let dob: String
    let avatarImage: UIImage
    
    init(name: String, email: String, dob: String, avatarImage: UIImage) {
        self.name = name
        self.email = email
        self.dob = dob
        self.avatarImage = avatarImage
    }
}
