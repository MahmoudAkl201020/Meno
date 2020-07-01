//
//  MainTabBarViewController.swift
//  Premature
//
//  Created by Abdelrahman Mohamed on 9/11/18.
//  Copyright © 2018 Abdelrahman Mohamed. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.setupMiddleButton()
    }
    
    
    
    
    // MARK: - Helpers
    var menuButton = UIButton()
    func setupMiddleButton() {
        menuButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 35, y: view.bounds.height - self.tabBar.frame.height - 24, width: 70, height: 70))
        
        menuButton.backgroundColor = Colors.white
//        menuButton.tintColor = Colors.darkGrey
        menuButton.layer.cornerRadius = menuButton.frame.height / 2
//        view.addSubview(menuButton)
        
        menuButton.setImage(UIImage(named: "home"), for: UIControl.State.normal)
        menuButton.setImage(UIImage(named: "LogoActive"), for: UIControl.State.selected)
        selectedIndex = 2
        menuButton.isSelected = true
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
        self.view.addSubview(menuButton)
        view.layoutIfNeeded()
    }
    
    // MARK: - Actions
    
    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
        menuButton.isSelected = true
    }
    
    
//    // MARK: - Actions
//    @objc private func menuButtonAction(sender: UIButton) {
//
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
//        let vcNavigationController = UINavigationController(rootViewController: vc)
//        vcNavigationController.navigationBar.isHidden = true
//        self.present(vcNavigationController, animated: false, completion: nil)
//    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        menuButton.isSelected = false
    }
}
