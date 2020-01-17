//
//  DashboardVC.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 11/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onMenuTapped(_ sender: Any) {
        print("Toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
}
