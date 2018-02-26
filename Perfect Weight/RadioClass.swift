//
//  RadioClass.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/26/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import Foundation

class RadioClass {
    
    static var isMenu: Bool = false
    static func ToggleMenu (){
        if isMenu {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
            isMenu = false
        }else{
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)
            isMenu = true
        }
        
    }
    
    
    
    
}
