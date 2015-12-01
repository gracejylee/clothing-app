//
//  SubcategoryCell.swift
//  ClothingApp
//
//  Created by Grace J Lee on 11/30/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class SubcategoryCell: UITableViewCell {

    @IBOutlet weak var subcategoryCellImage: UIImageView!
    @IBOutlet weak var subcategoryCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
