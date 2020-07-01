//
//  SearchResultTableViewCell.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/10/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {
    
    @IBOutlet weak var searchViewCell: UIView!
    @IBOutlet weak var searchLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        searchViewCell.layer.cornerRadius = 5
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
