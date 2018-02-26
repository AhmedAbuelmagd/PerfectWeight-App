//
//  ViewControllerTwo.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/23/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    //Connections
    @IBOutlet weak var lengthTxt: UITextField!
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var resultLbl: UILabel!
    
    //Variables & Constants
    var kind = 3

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func maleAndFemaleSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            kind = 0
        } else {
            kind = 1
        }
        
    }
    
    @IBAction func calculateBtnPressed(_ sender: Any) {
        
        
        let length: Double = Double(lengthTxt.text!)! / Double(100)
        
        var perfectWeight:Double = 1.0
        if kind == 1{
            perfectWeight = 21 * (length*length)
            perfectWeight = (perfectWeight * 10).rounded() / 10
            resultLbl.text = "\(perfectWeight)"
        
        } else {
            perfectWeight = 23 * (length*length)
            perfectWeight = (perfectWeight * 10).rounded() / 10
            resultLbl.text = "\(perfectWeight)"
            
        }
        
        
    }
    
}
