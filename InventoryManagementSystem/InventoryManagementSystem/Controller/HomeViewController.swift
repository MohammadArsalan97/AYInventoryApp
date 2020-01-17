//
//  HomeViewController.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 01/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    

   @objc func toggleSideMenu() {
        if sideMenuOpen{
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
        }else{
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
    UIView.animate(withDuration: 0.3) {
        self.view.layoutIfNeeded()
    }
    
    }

}
