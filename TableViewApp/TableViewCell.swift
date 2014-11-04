//
//  TableViewCell.swift
//  TableViewApp
//
//  Created by Anil Varghese on 19/06/14.
//  Copyright (c) 2014 Anil Varghese. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var recipeImageView : UIImageView?
    @IBOutlet var nameLabel : UILabel?
    @IBOutlet var timeLabel : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
