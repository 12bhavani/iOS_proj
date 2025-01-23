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
            //assign result to outputOL
            displayOL.text = ("temparature is hot")
            imageViewOL.image = UIImage(named: "hotClimate")
        }
        else{
            displayOL.text = ("temperature is cold")
            imageViewOL.image = UIImage(named: "coldClimate")
        }
        
        
    }
    
    

}

