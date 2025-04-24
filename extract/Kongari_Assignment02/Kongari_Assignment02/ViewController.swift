//
//  ViewController.swift
//  Kongari_Assignment02
//
//  Created by Bhavani Kongari on 2/1/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBTN(_ sender: UIButton) {
        // Read the value from nameOutlet and assign it to name variable
        var name = nameOutlet.text!
        
        // Read the values from billAmountOutlet, tipPercentageOutlet and assign it to billAmntStr, tipPerStr variables
        var billAmntStr = billAmountOutlet.text!
        var tipPerStr = tipPercentageOutlet.text!
        
        // Converting billAmntStr, tipPerStr to Integer and storing it in billAmnt, tipPer variables
        var billAmnt:Double = Double(billAmntStr)!
        var tipPer:Double = Double(tipPerStr)!
        
        // Calculating the tip amount and store it in variable tipAmnt by using formula (billAmnt * tipPer) / 100
        var tipAmnt:Double = (billAmnt*tipPer)/100
        
        // Calculating Total Bill Amount by using billAmnt+tipAmnt and assign it to totalBillAmnt
        var totalBillAmnt:Double = billAmnt+tipAmnt
        
        // Displaying the Receipt by nameLabel, billAmountLabel, tipAmountLabel, totalAmountLabel variables
        nameLabel.text = "Name: "+name
        billAmountLabel.text = "Bill Amount: $\(String(format: "%.2f", billAmnt))"
        tipAmountLabel.text = "Tip Amount: $\(String(format: "%.2f", tipAmnt))"
        totalAmountLabel.text = "Total Amount: $\(String(format: "%.2f", totalBillAmnt))"
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        // Replacing all variables with empty string
        nameOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        nameLabel.text = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
    }
    
}
