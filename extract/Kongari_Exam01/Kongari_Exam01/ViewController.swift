//
//  ViewController.swift
//  Kongari_Exam01
//
//  Created by Bhavani Kongari on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var input1OL: UITextField!
    
    @IBOutlet weak var input2OL: UITextField!
    
    @IBOutlet weak var imageViewOl: UIImageView!
    
    @IBOutlet weak var displayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkBtnClicked(_ sender: UIButton) {
        if (input1OL.text!).isEmpty || (input2OL.text!).isEmpty{
            displayOL.text! = "Please enter the input values for PM2.5 and PM10."
            imageViewOl.isHidden = true
        }
        
        else if let doubleValue = Double(input1OL.text!) {
            if let doubleValue1 = Double(input2OL.text!){
                var val1 = Double(input1OL.text!)!
                var val2 = Double(input2OL.text!)!
                var res = (val1+val2)/2
                
                if res<50{
                    displayOL.text! = "The AQC value is \(String(format: "%.1f", res))\n"+"This is considered to be best👍 quality air."
                    imageViewOl.image = UIImage(named: "Best")
                }
                else if res>=50 && res<100{
                    displayOL.text! = "The AQC value is \(String(format: "%.1f", res))\n"+"This is considered to be moderate quality air😕."
                    imageViewOl.image = UIImage(named: "Moderate")
                }
                else {
                    displayOL.text! = "The AQC value is \(String(format: "%.1f", res))\n"+"This is considered to be Poor quality air😕."
                    imageViewOl.image = UIImage(named: "Poor")
                }
            }
            else{
                displayOL.text! = "Please enter valid numeric values for PM2.5 and PM10."
                imageViewOl.isHidden = true
                
            }
        }
        else {
            displayOL.text! = "Please enter valid numeric values for PM2.5 and PM10."
            imageViewOl.isHidden = true
            }
    }
    
   
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        displayOL.text! = "Label"
        imageViewOl.isHidden = true
        input1OL.text! = ""
        input2OL.text! = ""
    }
    
    
    
    
}

