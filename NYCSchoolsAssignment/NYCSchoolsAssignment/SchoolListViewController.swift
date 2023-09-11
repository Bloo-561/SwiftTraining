//
//  ViewController.swift
//  NYCSchoolsAssignment
//
//  Created by Consultant on 9/10/23.
//

import UIKit

class SchoolListViewController: UIViewController {
    
    var schoolsModel = SchoolModel()
    @IBOutlet weak var schoolsList: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolsList.dataSource = self
    }
}

extension SchoolListViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        schoolsModel.getSchools(url: schoolsModel.url) {
            schools, error in guard schools.count > 0 else {
                return
            }
            
            self.schoolsModel.schools = schools
            self.schoolsList.reloadData()
        }
        
        let rows = self.schoolsModel.schools.count
        return self.schoolsModel.schools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = schoolsList.dequeueReusableCell(withIdentifier: "schoolCell", for: indexPath) as? SchoolListTableViewCell ?? SchoolListTableViewCell()
        
        cell.schoolName.text = schoolsModel.schools[indexPath.item].schoolName
        cell.schoolLocation.text = schoolsModel.schools[indexPath.item].city
        return cell
    }
    
    
}

