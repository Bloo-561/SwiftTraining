//
//  CountryTableViewCell.swift
//  TrainingProject
//
//  Created by Consultant on 9/5/23.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var currencySymbol: UILabel!
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var code: UILabel!
    @IBOutlet weak var region: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
