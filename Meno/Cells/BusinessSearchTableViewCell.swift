//
//  BusinessSearchTableViewCell.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/14/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class BusinessSearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var businessSearchView: UIView!
    @IBOutlet weak var businessSearchLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        businessSearchView.layer.cornerRadius = 5
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
