//
//  ViewControllerOne.swift
//  Perfect Weight
//
//  Created by Ahmed Abuelmagd on 2/23/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    //Connections
    @IBOutlet weak var weightTxt: UITextField!
    @IBOutlet weak var lengthTxt: UITextField!
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var resultImg: UIImageView!
    @IBOutlet weak var bodyMassRateLbl: UILabel!
    @IBOutlet weak var perfecWeightMaxLbl: UILabel!
    
    //Variables & Constants
    let resultImagesArray = ["bar1" , "bar2" , "bar3" , "bar4" , "bar5" , "bar6" ]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func resultBtnPressed(_ sender: UIButton) {
        
        
        let weight:Double = Double(weightTxt.text!)!
        let legth: Double = Double(lengthTxt.text!)! / Double(100)
        var bestWeight = weight / (legth*legth)
        bestWeight = (bestWeight * 10).rounded() / 10
        bodyMassRateLbl.text = "معدل كتلة الجسم هي \(bestWeight)"
        var perfectWeightMax:Double = 25 * (legth*legth)
        perfectWeightMax = (perfectWeightMax * 10).rounded() / 10
        var perfectWeightMin:Double = 18.5 * (legth*legth)
        perfectWeightMin = (perfectWeightMin * 10).rounded() / 10
        perfecWeightMaxLbl.text = " تشير النتائج إلي ان وزنك اعلي من الوزن المثالي بمقدار \(weight - perfectWeightMax) كيلوجرام حيث ان الوزن المثالي يتراوح ما بين \(perfectWeightMax) كيلو جرام وبين \(perfectWeightMin) كيلوجرام "
        if bestWeight < 16 {
            resultImg.image = UIImage(named:resultImagesArray[0])
        } else if 16 <= bestWeight && bestWeight <= 18.5   {
            resultImg.image = UIImage(named:resultImagesArray[1])
        } else if 18.5 < bestWeight && bestWeight <= 25   {
            resultImg.image = UIImage(named:resultImagesArray[2])
        } else if 25 < bestWeight && bestWeight <= 30   {
            resultImg.image = UIImage(named:resultImagesArray[3])
        } else if bestWeight > 30   {
            resultImg.image = UIImage(named:resultImagesArray[4])
        }
        
        //calculateBtn.isHidden = true
        
    
    }
    
}
