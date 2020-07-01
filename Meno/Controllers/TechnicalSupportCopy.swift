//
//  TechnicalSupportCopy.swift
//  Meno
//
//  Created by Mahmoud Akl on 12/13/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class TechnicalSupportCopy: UIViewController {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var technicalButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        searchView.layer.cornerRadius = 20
        technicalButton.layer.cornerRadius = 20
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func techBackBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
