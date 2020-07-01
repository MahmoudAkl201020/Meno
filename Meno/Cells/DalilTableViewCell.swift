//
//  DalilTableViewCell.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/14/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class DalilTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dalilViewCell: UIView!
    @IBOutlet weak var dalilLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    @IBOutlet weak var singleXBtn: UIButton!
//    weak var dalilDelegate : DalilDelegate?
    var dalil : DalilVC?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dalilViewCell.layer.cornerRadius = 5
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
