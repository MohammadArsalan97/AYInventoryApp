//
//  CustomButton.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 13/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomButton: UIButton {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    func round() {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 0
//        self.layer.shadowColor = UIColor.black.cgColor
//        self.layer.shadowOffset = CGSize(width: 2.0, height: 5.0)
//        self.layer.shadowRadius = 8
//        self.layer.shadowOpacity = 0.5
        
        // self.layer.borderColor = widthColor.cgColor
        self.clipsToBounds = true
    }
    
    //    override func draw(_ rect: CGRect) {
    //
    //        self.setNeedsDisplay()
    //    }
    //
    //    @IBInspectable var cornerRadius:CGFloat = 0{
    //        didSet{
    //            self.setNeedsDisplay()
    //        }
    //    }
    //
    //    @IBInspectable var cornerWidth:CGFloat = 0{
    //        didSet{
    //            self.setNeedsDisplay()
    //        }
    //    }
    //
    //    @IBInspectable var widthColor:UIColor = UIColor.red{
    //        didSet{
    //            self.setNeedsDisplay()
    //        }
    //    }
    
    @IBInspectable var isCircle:Bool = false{
        didSet{
            round()
        }
    }
    
    
}
