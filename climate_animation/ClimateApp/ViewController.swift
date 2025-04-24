//
//  ViewController.swift
//  ClimateApp
//
//  Created by Bhavani Kongari on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    @IBOutlet weak var displayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //Read the temparature and assign it to a var
        var tempS = inputOL.text!
        //Convert into double
        let temp = Double(tempS)!
        //check whether it is cold or hot
        //temperature is hot if temp>60, otherwise it is cold
        if temp>60{
            UIView.animate(withDuration: 0.5, animations: {
                       self.imageViewOL.alpha = 0.0 // Fade out
            })
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 // Fade in
                self.imageViewOL.image = UIImage(named: "hotClimate")
            })
            displayOL.text = ("temparature is hot")
        }
        else{
            UIView.animate(withDuration: 0.5, animations: {
                       self.imageViewOL.alpha = 0.0 // Fade out
            })
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 // Fade in
                self.imageViewOL.image = UIImage(named: "coldClimate")
            })
            displayOL.text = ("temperature is cold")
        }
        
    }
    
}

