//
//  TechSupportViewController.swift
//  Meno
//
//  Created by Mahmoud Akl on 1/30/19.
//  Copyright © 2019 Mahmoud Akl. All rights reserved.
//

import UIKit

class TechSupportViewController: UIViewController {

    @IBOutlet weak var techView: UIView!
    @IBOutlet weak var techButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        techView.layer.cornerRadius = 20
        techButton.layer.cornerRadius = 20
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
