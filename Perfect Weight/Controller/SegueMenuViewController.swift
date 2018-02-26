//
//  SegueMenuViewController.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/26/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class SegueMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(SegueMenuViewController.ChangeVC(notification:)), name: NSNotification.Name(rawValue: "ChangeVC"), object: nil)
        

    }
    @objc func ChangeVC(notification:NSNotification){
        if let Dic = notification.userInfo as? [String : AnyObject]{
            if let Name = Dic["ToVC"] as? String {
                performSegue(withIdentifier: Name, sender: nil)
            }
        }
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        performSegue(withIdentifier: "main", sender: nil)
    }

}
