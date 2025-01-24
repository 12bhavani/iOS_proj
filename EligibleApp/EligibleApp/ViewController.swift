//
//  ViewController.swift
//  EligibleApp
//
//  Created by Bhavani Kongari on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOL: UITextField!
    
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    
    
    @IBOutlet weak var displayOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //read age from onputOL
        var ageStr = inputOL.text!
        //convert ade of type string to integer
        var age = Int(ageStr)!
        //check condition whether age>18 or not
        //age>18 is eligible to vote, otherwise not
        if age>18{
            displayOL.text = "You are Eligible to vote"
            imageOL.image = UIImage(named: "yes")
        }
        else {
            displayOL.text = "Your are not Eligible to vote"
            imageOL.image = UIImage(named: "no")
        }
    }
    
}

