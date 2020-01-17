//
//  AddProductVC.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 11/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import UIKit

class AddProductVC: UIViewController {

    @IBOutlet weak var productNameLbl: UILabel!
    
    @IBOutlet weak var manufacturerLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var quantityLbl: UILabel!
    
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var amountLbl: UILabel!
    
    @IBOutlet weak var productNameTxtField: CustomTextField!
    
    @IBOutlet weak var manufacturerTxtField: CustomTextField!
    
    @IBOutlet weak var descriptionTextField: CustomTextField!
    
    @IBOutlet weak var dateTxtField: CustomTextField!
    @IBOutlet weak var quantityTxtField: CustomTextField!
    
    
    @IBOutlet weak var amountTxtField: CustomTextField!
    
    
    @IBOutlet weak var saveBtnOutlet: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func saveBtn(_ sender: Any) {
    }
    @IBAction func cancelBtn(_ sender: Any) {
    }
}
//extension AddProductVC: UITextFieldDelegate{
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        if textField == storeNameTxtField {
//            storeNameTxtField.lineColor = UIColor.blue
//            storeNameTxtField.draw(textField.frame)
//            //storeNameTxtField.textColor = UIColor.red
//            //storeNameTxtField.lineColor = .blue
//            storeNameLbl.isHidden = false
//            // storeNameLbl.isEnabled = true
//            storeNameLbl.textColor = UIColor.blue
//        }
//        else if textField == locationTxtField {
//            locationTxtField.lineColor = UIColor.blue
//            locationTxtField.draw(textField.frame)
//            //storeNameTxtField.textColor = UIColor.red
//            //storeNameTxtField.lineColor = .blue
//            locationLbl.isHidden = false
//            locationLbl.textColor = UIColor.blue
//        }
//
//
//    }
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        if storeNameTxtField.text == ""{
//            storeNameTxtField.lineColor = UIColor.lightGray
//            storeNameTxtField.draw(textField.frame)
//            storeNameLbl.isHidden = true
//            storeNameLbl.textColor = UIColor.lightGray
//        }
//        if locationTxtField.text == "" {
//            locationTxtField.lineColor = UIColor.lightGray
//            locationTxtField.draw(textField.frame)
//            locationLbl.isHidden = true
//            locationLbl.textColor = UIColor.lightGray
//        }
//    }
//
//}
