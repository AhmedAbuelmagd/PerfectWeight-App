//
//  MySideBarShadowView.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/27/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//
import Foundation
import UIKit

class MySideBarShadowView : UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.4).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: -1, height: -3)
        self.layer.shadowOpacity = 0.35
    }
    
    
}
