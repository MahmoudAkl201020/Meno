//
//  TermsAndConditionsVC.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/21/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class TermsAndConditionsVC: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var termsView: UIView!
    @IBOutlet weak var termsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.layer.cornerRadius = 20
        termsView.layer.cornerRadius = 5
        termsButton.layer.cornerRadius = 20
    }
    
    @IBAction func termsBackBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func termsBtnTapped(_ sender: UIButton) {
        print("Terms Button Clicked")
    }
}
