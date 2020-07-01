//
//  BusinessSearchVC.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/14/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class BusinessSearchVC: UIViewController {
    
    var businessSearchaRR = ["محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد"]
    var subaRR = ["مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", ]
    
    @IBOutlet weak var businessSearchTextField: UITextField!
    @IBOutlet weak var businessSearchTableView: UITableView!
    @IBOutlet weak var searchView: UIView!
    
    var firstaRR = ["Mohamed", "Mahmoud", "Sally", "Akl", "Samia", "Alaa", "do3a2", "12345", "67890", "201020", "Ali", "Dalia", "sara22"]
    var secondaRR = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.layer.cornerRadius = 20
        
        for str in firstaRR{
            secondaRR.append(str)
        }
    }
    
    
    @IBAction func searcBtnTapped(_ sender: Any) {
        if businessSearchTextField.text?.count != 0 {
            self.secondaRR.removeAll()
            for str in firstaRR{
                let range = str.lowercased().range(of: businessSearchTextField.text!, options: .caseInsensitive, range: nil, locale: nil)
                
                if range != nil{
                    self.secondaRR.append(str)
                }
            }
        }
        self.businessSearchTableView.reloadData()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func businessBackBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}





extension BusinessSearchVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondaRR.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BusinessSearchCell", for: indexPath) as! BusinessSearchTableViewCell
        cell.businessSearchLabel.text = secondaRR[indexPath.row]
//        cell.subLabel.text = subaRR[indexPath.row]
        
        return cell
    }
    
    
}

//MARK:- UITextField Delegate

extension BusinessSearchVC: UITextFieldDelegate{
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        
        businessSearchTextField.resignFirstResponder()
        businessSearchTextField.text = ""
        self.secondaRR.removeAll()
        for str in firstaRR{
            secondaRR.append(str)
        }
        self.businessSearchTableView.reloadData()
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if businessSearchTextField.text?.count != 0 {
            self.secondaRR.removeAll()
            for str in firstaRR{
                let range = str.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)

                if range != nil{
                    self.secondaRR.append(str)
                }
            }
        }
        self.businessSearchTableView.reloadData()
        return true
    }
    
}
