//
//  ViewController.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/23/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var containerViewA: UIView!
    
    @IBOutlet weak var containerViewB: UIView!
    override func viewDidLoad() {
        self.navigationItem.setHidesBackButton(true, animated: false)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showComponent(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerViewA.alpha = 0
                self.containerViewB.alpha = 1
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.containerViewA.alpha = 1
                self.containerViewB.alpha = 0
            })
        }
        
    }

    

    @IBAction func sideMenuAction(_ sender: UIButton) {
        RadioClass.ToggleMenu()
    }
}

