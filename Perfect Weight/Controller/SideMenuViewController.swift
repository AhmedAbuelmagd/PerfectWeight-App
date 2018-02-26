//
//  SideMenuViewController.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/26/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    @IBAction func ButtonsActions(_ sender: UIButton) {
        var ToVC : String = ""
        if sender.tag == 0 { ToVC = "main"}
        else if sender.tag == 1 { ToVC = "settings"}
        else if sender.tag == 2 { ToVC = "archive"}
        else if sender.tag == 3 { ToVC = "aboutUs"}
        else if sender.tag == 4 { ToVC = "aboutUs"}
        else if sender.tag == 5 { ToVC = "aboutUs"}
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ChangeVC"), object: nil, userInfo: ["ToVC": ToVC])
        
        
        
    }
}
