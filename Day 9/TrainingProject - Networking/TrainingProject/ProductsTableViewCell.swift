//
//  ProductsTableViewCell.swift
//  TrainingProject
//
//  Created by Consultant on 9/1/23.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var product: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var descript: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
