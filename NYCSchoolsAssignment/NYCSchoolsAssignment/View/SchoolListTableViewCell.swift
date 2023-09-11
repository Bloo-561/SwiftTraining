//
//  SchoolListTableViewCell.swift
//  NYCSchoolsAssignment
//
//  Created by Elvis Mack on 9/8/23.
//

import UIKit

class SchoolListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var schoolName: UILabel!
    @IBOutlet weak var schoolLocation: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
