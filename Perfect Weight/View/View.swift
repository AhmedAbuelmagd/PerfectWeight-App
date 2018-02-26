//
//  View.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/23/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class View: UIView {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    func customizeView () {
        backgroundColor = #colorLiteral(red: 0.9097049236, green: 0.909860909, blue: 0.9096950889, alpha: 1)
        layer.cornerRadius = 15
        layer.masksToBounds = true
    }
}
