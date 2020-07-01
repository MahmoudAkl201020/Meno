//
//  AboutVC.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/17/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var aboutView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        searchView.layer.cornerRadius = 20
        aboutView.layer.cornerRadius = 5
    }
    
    @IBAction func aboutBackBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
