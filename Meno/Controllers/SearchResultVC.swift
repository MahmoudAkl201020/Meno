//
//  SearchResultVC.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/8/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class SearchResultVC: UIViewController {
    
    var nameaRR = ["محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد"]
    var subaRR = ["مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", ]
    
    @IBOutlet weak var searchView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.layer.cornerRadius = 20
        print(nameaRR)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func searchBackBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension SearchResultVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(nameaRR.count)
        return nameaRR.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchResultCell", for: indexPath) as! SearchResultTableViewCell
        cell.searchLabel.text = nameaRR[indexPath.row]
        cell.subLabel.text = subaRR[indexPath.row]
        return cell
    }
    
    
}
