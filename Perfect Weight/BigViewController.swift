//
//  BigViewController.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/26/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class BigViewController : UIViewController {
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(BigViewController.HideMenu), name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BigViewController.ShowMenu), name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)
    }
    
    @IBOutlet weak var SideMenuLayout: NSLayoutConstraint!
    
    @objc func HideMenu (){
        SideMenuLayout.constant = 0
        UIView.animate(withDuration: 0.5){
            self.view.layoutIfNeeded()
        }
        
    }
    @objc func ShowMenu (){
        
       SideMenuLayout.constant = self.view.frame.width * 0.3
        UIView.animate(withDuration: 0.5){
            self.view.layoutIfNeeded()
        }
    }
}
