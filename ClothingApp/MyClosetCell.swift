//
//  MyClosetCell.swift
//  ClothingApp
//
//  Created by elee on 11/25/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyClosetCell: UITableViewCell {

    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellItemName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
