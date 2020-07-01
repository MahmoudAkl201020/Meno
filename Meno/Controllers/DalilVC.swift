//
//  DalilVC.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/14/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class DalilVC: UIViewController {
    
    var dalilaRR = ["محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد", "محمد عقل محمد"]
    var subaRR = ["مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", "مصمم جرافيك", ]
    var anyaRR = ["one", "two", "tree", "four", "five", "six"]
    
    @IBOutlet weak var dalilView: UIView!
    @IBOutlet weak var dalilButton: UIButton!
    @IBOutlet weak var dalilTableView: UITableView!
//    @IBOutlet weak var singleRemoveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dalilView.layer.cornerRadius = 20
        dalilButton.layer.cornerRadius = 20
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func deleteAllButton(_ sender: UIButton) {
        anyaRR.removeAll()
        dalilTableView.reloadData()
    }
    
}

extension DalilVC: UITableViewDelegate, UITableViewDataSource{
    func didPressButton(_ tag: Int) {
         print("I have pressed a button with a tag: \(tag)")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return anyaRR.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DalilCell", for: indexPath) as! DalilTableViewCell
        
        cell.dalilLabel.text = anyaRR[indexPath.row]
//        cell.subLabel.text = subaRR[indexPath.row]
        
//        cell.dalilDelegate = self
        cell.singleXBtn.tag = indexPath.row
        
        return cell
    }
    
    @IBAction func singleDeleteButton(_ sender: UIButton) {
        self.anyaRR.remove(at: sender.tag)
        self.dalilTableView.reloadData()



    }
    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete{
//            anyaRR.remove(at: indexPath.row)
//            dalilTableView.reloadData()
////            tableView.beginUpdates()
////            tableView.deleteRows(at: [indexPath], with: .automatic)
////            tableView.endUpdates()
//        }
//    }
    
    
}


