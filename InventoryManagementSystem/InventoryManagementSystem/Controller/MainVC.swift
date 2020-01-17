//
//  MainVC.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 10/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(dashBoard), name: NSNotification.Name("DashBoard"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(addStore), name: NSNotification.Name("AddStore"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(addProduct), name: NSNotification.Name("AddProduct"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(addSaleDetail), name: NSNotification.Name("AddSaleDetail"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(viewStock), name: NSNotification.Name("ViewStock"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(viewSales), name: NSNotification.Name("ViewSales"), object: nil)
        

    }
    
    @objc func dashBoard(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    @objc func addStore(){
        performSegue(withIdentifier: "AddStore", sender: nil)
    }
    @objc func addProduct(){
        performSegue(withIdentifier: "AddProduct", sender: nil)
    }
    @objc func addSaleDetail(){
        performSegue(withIdentifier: "AddSaleDetail", sender: nil)
    }
    @objc func viewStock(){
        performSegue(withIdentifier: "ViewStock", sender: nil)
    }
    @objc func viewSales(){
        performSegue(withIdentifier: "ViewSales", sender: nil)
    }
   
    
    
    
    @IBAction func onMenuTapped(_ sender: Any) {
        print("Toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
  

}
