//
//  SlideMenuViewController.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 01/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import UIKit

class SlideMenuViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 1:
            NotificationCenter.default.post(name: NSNotification.Name("DashBoard"), object: nil)
        case 2:
            NotificationCenter.default.post(name: NSNotification.Name("AddStore"), object: nil)
        case 3:
            NotificationCenter.default.post(name: NSNotification.Name("AddProduct"), object: nil)
        case 4:
            NotificationCenter.default.post(name: NSNotification.Name("AddSaleDetail"), object: nil)
        case 5:
            NotificationCenter.default.post(name: NSNotification.Name("ViewStock"), object: nil)
        case 6:
            NotificationCenter.default.post(name: NSNotification.Name("ViewSales"), object: nil)
        default:
            break
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.tableFooterView = UIView()
        
        
    }

   

}
