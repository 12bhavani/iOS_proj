//
//  ViewController.swift
//  SimpleInterestCalculatorApp
//
//  Created by Bhavani Kongari on 3/27/25.
//

import UIKit

class ViewController: UIViewController {

    var display = ""
    var image = ""
    @IBOutlet weak var principalOL: UITextField!
    
    
    @IBOutlet weak var rateOfInteOL: UITextField!
    
    
    @IBOutlet weak var timeOL: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcBtnClicked(_ sender: UIButton) {
        var principal = Int(principalOL.text!)!
        var rate = Int(rateOfInteOL.text!)!
        var time = Int(timeOL.text!)!
        var res = (principal*rate*time)/100
        if res<100{
            display = "Calculated simple interest is \(res). Category: Low"
            image = "low"
        }
        else if res>=100 && res<500{
            display = "Calculated simple interest is \(res). Category: Medium"
            image = "medium"
        }
        else {
            display = "Calculated simple interest is \(res). Category: High"
            image = "high"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.prin = "Entered principal amount is "+principalOL.text!
            destination.rate = "Entered rate of interest is "+rateOfInteOL.text!
            destination.time = "Entered time is "+timeOL.text!
            destination.text = display
            destination.img = image
        }
    }
}

