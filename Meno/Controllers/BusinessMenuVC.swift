//
//  WorksViewController.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/14/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class BusinessMenuVC: UIViewController {
    
    var businessMenuaRR = ["مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف", "مهن وحرف"]
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var worksView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.layer.cornerRadius = 20
        worksView.layer.cornerRadius = 5
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

extension BusinessMenuVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return businessMenuaRR.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BusinessMenuCell", for: indexPath) as! BusinessMenuTableViewCell
        cell.BusinessMenuLabel.text = businessMenuaRR[indexPath.row]
        return cell
    }
    
    
}
