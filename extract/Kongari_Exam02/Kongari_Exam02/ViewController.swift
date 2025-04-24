//
//  ViewController.swift
//  Kongari_Exam02
//
//  Created by Bhavani Kongari on 4/3/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typeOL: UITextField!
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var rateOL: UITextField!
    
    @IBOutlet weak var timeOL: UITextField!
    
    @IBOutlet weak var calcBtnOL: UIButton!
    
    @IBOutlet weak var resetBtnOL: UIButton!
    
    var totalMonths = 0.0
    var monthlyInterestRate = 0.0
    var monthlySavingsPayment = 0.0
    var img = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calcBtnOL.isEnabled = false
        resetBtnOL.isEnabled = false
    }

    @IBAction func resetBtnClicked(_ sender: Any) {
        typeOL.text! = ""
        amountOL.text! = ""
        rateOL.text! = ""
        timeOL.text! = ""
        calcBtnOL.isEnabled = false
        resetBtnOL.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
        // Reset all input fields
        typeOL.text! = ""
        amountOL.text! = ""
        rateOL.text! = ""
        timeOL.text! = ""
        }
    
    @IBAction func calcBtnClicked(_ sender: UIButton) {
        var type = typeOL.text!
        var targetAmount = Int(amountOL.text!)!
        var interestRate = Double(rateOL.text!)!
        var timePeriod = Int(timeOL.text!)!
        
        totalMonths = Double(timePeriod * 12)
        monthlyInterestRate = (interestRate / 100) / 12
        monthlySavingsPayment = Double(targetAmount) / ((pow(1 +       monthlyInterestRate, totalMonths ) - 1) / monthlyInterestRate)
        
        if(type == "car"){
            img = "car"
        }
        else if(type == "vacation"){
            img = "vacation"
        }
        else if(type == "home"){
            img = "home"
        }
    }
    
    @IBAction func textField(_ sender: UITextField) {
        if !typeOL.text!.isEmpty && !amountOL.text!.isEmpty && !rateOL.text!.isEmpty && !timeOL.text!.isEmpty{
            calcBtnOL.isEnabled = true
            resetBtnOL.isEnabled = true
        }
        else{
            calcBtnOL.isEnabled = false
            resetBtnOL.isEnabled = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.goalType = "Goal Type: \(typeOL.text!)"
            destination.targetAmnt = "Target Amount: \(amountOL.text!)"
            destination.interestRate = "Entered Interest Rate: \(rateOL.text!)"
            destination.result = String(format: "Calculated Savings: %.2f", monthlySavingsPayment)
            destination.image = img
        }
    }
    
}

