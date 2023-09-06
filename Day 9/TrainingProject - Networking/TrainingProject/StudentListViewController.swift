//
//  StudentListViewController.swift
//  TrainingProject
//
//  Created by Elvis Mack on 9/1/23.
//

import UIKit

class StudentListViewController: UIViewController, UITableViewDataSource {
    
    var students: [Student] = []
    var userName: String?
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createStudent()
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentListCell", for: indexPath) as? studentListCell
        cell?.name.text = students[indexPath.row].name
        cell?.email.text = students[indexPath.row].email
        cell?.dob.text = students[indexPath.row].dob
        
        return cell ?? UITableViewCell()
    }
    
    func createStudent() {
        for index in (1...10) {
            let student = Student(name: "Student \(index)", email: "sd\(Int.random(in: 12345...99999))@gamil.com", dob: "\(Int.random(in: 1...12))/\(Int.random(in: 1...28))/\(Int.random(in: 1990...2010))")
            
            students.append(student)
        }
    }

}

class Student {
    let name: String , email: String , dob: String
    
    init(name: String, email: String, dob: String) {
        self.name = name
        self.email = email
        self.dob = dob
    }
}

