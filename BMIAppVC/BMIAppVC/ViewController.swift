//
//  ViewController.swift
//  BMIAppVC
//
//  Created by Bhavani Kongari on 3/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    var display = ""
    var image = ""
    
    @IBOutlet weak var hFeetOL: UITextField!
    
    
    @IBOutlet weak var hIncheOL: UITextField!
    
    
    @IBOutlet weak var wLbOL: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcuBtnClicked(_ sender: UIButton) {
        var hfeet = Int(hFeetOL.text!)!
        var hinch = Int(hIncheOL.text!)!
        var wlb = Double(wLbOL.text!)!
        var height = (hfeet*12)+hinch
        var temp:Double = (wlb/Double(height*height))
        var results:Double = 703 * temp
        
        if results<=18.5{
             display = "Your Body Mass Index is \(String(format: "results: %.2f", results)).\nThis is considered Underweight🪫. \nHealthtip: Eat more protein and healty fats."
            image = "underWeight"
        }
        else if results>=18.6 && results<=24.9{
            display = "Your Body Mass Index is \(String(format: "results: %.2f", results)).\nThis is considered Normal👍. \nHealthtip: Excellent! Maintain a balanced lifestyle."
            image = "normal"
        }
        else if results>=25 && results<=29.9{
            display = "Your Body Mass Index is \(String(format: "results: %.2f", results)).\nThis is considered Overweight. \nHealthtip: Lose weight by maintaining a balanced diet less and increasing physical activity."
            image = "overWeight"
        }
        else{
            display = "Your Body Mass index is \(String(format: "results: %.2f", results)).\nThis is considered Obese. \nHealthtip: Consult a doctor for personalized advice."
            image = "obese"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.hfeet = hFeetOL.text!
            destination.hinch = hIncheOL.text!
            destination.wlb = String(Double(wLbOL.text!)!)
            destination.displayR = display
            destination.imageR = image
        }
        
    }
    
}

