//
//  ViewController.swift
//  Kongari_CalculatorApp
//
//  Created by Bhavani Kongari on 2/18/25.
//

import UIKit

class ViewController: UIViewController {

    var res = ""
    var num = ""
    var operatr = ""
    var operand1 = ""
    var operand2 = ""
    var prev = ""
    var temp = ""
    var empty = true
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    @IBOutlet var buttonsOutlet: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    @IBAction func ACBtn(_ sender: UIButton) {
        //set all the variables with emoty string, so everything will be cleared
        operand1=""
        operand2=""
        operatr=""
        res=""
        //set resultOutlet to 0
        resultOutlet.text! = "0"
    }
    
    @IBAction func CBtn(_ sender: UIButton) {
        //clear res variable to empty  string and display that empty value at resultOutlet
        res=""
        resultOutlet.text! = res
    }
    
    @IBAction func changeSignBtn(_ sender: UIButton) {
        //converting the res into integer and multiply the value with -1
        let val = Int(res)!*(-1)
        res = String(val)
        //display the value at resultOutlet
        resultOutlet.text! = res
    }
    
    @IBAction func divisionBtn(_ sender: UIButton) {
        //check where both operand1 and res is empty or not, if not empty compute the result
        //for all the previous values and store it in operand1, and store "/" in operatr
        //otherwise, store res in operand1 and store "/" in operatr, set res to empty.
        if !operand1.isEmpty && !res.isEmpty {
            equalbtn(sender)
            operand1 = temp
            operatr = "/"
            }
        else{
            operand1 = resultOutlet.text!
            res = ""
            operatr = "/"
        }
    }
    
    @IBAction func multiplyBtn(_ sender: UIButton) {
        //check where both operand1 and res is empty or not, if not empty compute the result
        //for all the previous values and store it in operand1, and store "*" in operatr
        //otherwise, store res in operand1 and store "*" in operatr, set res to empty.
        if !operand1.isEmpty && !res.isEmpty {
            equalbtn(sender)
            operand1 = temp
            operatr = "*"
            }
        else{
            operand1 = resultOutlet.text!
            res = ""
            operatr = "*"
        }
    }
    
    @IBAction func minusBtn(_ sender: UIButton) {
        //check where both operand1 and res is empty or not, if not empty compute the result
        //for all the previous values and store it in operand1, and store "-" in operatr
        //otherwise, store res in operand1 and store "-" in operatr, set res to empty.
        if !operand1.isEmpty && !res.isEmpty {
            equalbtn(sender)
            operand1 = temp
            operatr = "-"
            }
        else{
            operand1 = res
            res = ""
            operatr = "-"
        }
    }
    
    @IBAction func plusBtn(_ sender: UIButton) {
        //check where both operand1 and res is empty or not, if not empty compute the result
        //for all the previous values and store it in operand1, and store "+" in operatr
        //otherwise, store res in operand1 and store "+" in operatr, set res to empty.
        if !operand1.isEmpty && !res.isEmpty {
            equalbtn(sender)
            operand1 = temp
            operatr = "+"
            }
        else{
            operand1 = res
            res = ""
            operatr = "+"
        }
    }
    
    func equalbtn(_ sender: UIButton){
        //check whether res isempty, if yes, return without computation
        if res.isEmpty {
        return
        }
        //if res is not empty operand2 = res
        operand2 = res
        var result1 = 0
        var result2 = 0.0
        
        //check operatr value and follow its respective operations
        if(operatr=="+"){
            //addition for decimal values by converting into double
            if(operand1.contains(".")||operand2.contains(".")){
                result2 = Double(operand1)! + Double(operand2)!
                temp = String(format: "%.10g", result2)
            }
            //addition for integer values by converting into integer
            else{
                result1 = Int(operand1)! + Int(operand2)!
                temp = String(result1)
            }
        }
        else if(operatr=="-"){
            //subraction for decimal values by converting into double
            if(operand1.contains(".")||operand2.contains(".")){
                result2 = Double(operand1)! - Double(operand2)!
                temp = String(format: "%.10g", result2)
            }
            //subraction for integer values by converting into integer
            else{
                result1 = Int(operand1)! - Int(operand2)!
                temp = String(result1)
            }
        }
        else if(operatr=="*"){
            //multiplication for decimal values by converting into double
            if(operand1.contains(".")||operand2.contains(".")){
                result2 = Double(operand1)! * Double(operand2)!
                temp = String(result2)
            }
            //multiplication for integer values by converting into integer
            else{
                result1 = Int(operand1)! * Int(operand2)!
                temp = String(result1)
            }
        }
        else if(operatr=="/"){
            //division for any value by converting into double
            result2 = Double(operand1)! / Double(operand2)!
            //check the remainder, if divided by 1 and result is zero, display whole number.
            if result2.truncatingRemainder(dividingBy: 1) == 0
            {
                temp = String(format: "%.0f", result2)
            }
            //check whether it has only 1 value after decimal
            else if result2 * 10 == floor(result2 * 10)
            {
                temp = String(format: "%.1f", result2)
            }
            //otherwise display upto 2 value after decimal
            else
            {
                temp = String(format: "%.2f", result2)
            }
        }
        else if(operatr=="%"){
            //modulo for decimal values by converting into double
            if(operand1.contains(".")||operand2.contains(".")){
                result2 = Double(operand1)!.remainder(dividingBy: Double(operand2)!)
                temp = String(format: "%.10g", result2)
            }
            //modulo for integer values by converting into integer
            else{
                result1 = Int(operand1)! % Int(operand2)!
                temp = String(format: "%.10g", result2)
            }
        }
        
        //set empty to false, so res can store value again separately
        empty = false
        //if result is inf display nan
        if(temp=="inf"){
            temp = "nan"
        }
        //display the result and set res to empty
        resultOutlet.text! = temp
        res = ""
    }
    @IBAction func equalsBtn(_ sender: UIButton) {
        //when equalsBtn is clicked the computation should be done and display will be displayed as mentioned in equalbtn()
        equalbtn(sender)
        //set all variable to empty and empty variable to false
        operand1=""
        operand2=""
        operatr=""
        res=""
        empty = false
    }
    
    @IBAction func moduloBtn(_ sender: UIButton) {
        //check where both operand1 and res is empty or not, if not empty compute the result
        //for all the previous values and store it in operand1, and store "%" in operatr
        //otherwise, store res in operand1 and store "%" in operatr, set res to empty.
        if !operand1.isEmpty && !res.isEmpty {
            equalbtn(sender)
            operand1 = temp
            operatr = "%"
            }
        else{
            operand1 = res
            res = ""
            operatr = "%"
        }
    }
    
    @IBAction func decimalBtn(_ sender: UIButton) {
        //append "." to res variable and display at resultOutput
        res=res+"."
        resultOutlet.text! = res
    }
    
    @IBAction func zoeroBtn(_ sender: UIButton) {
        numberClicked(val: "0")
    }
    
    @IBAction func oneBtn(_ sender: UIButton) {
        numberClicked(val: "1")
    }
    
    @IBAction func twoBtn(_ sender: UIButton) {
        numberClicked(val: "2")
    }
    
    @IBAction func threeBtn(_ sender: UIButton) {
        numberClicked(val: "3")
    }
    
    @IBAction func fourBtn(_ sender: UIButton) {
        numberClicked(val: "4")
    }
    
    @IBAction func fiveBtn(_ sender: UIButton) {
        numberClicked(val: "5")
    }
    
    
    @IBAction func sixBtn(_ sender: UIButton) {
        numberClicked(val: "6")
    }
    
    
    @IBAction func sevenBtn(_ sender: UIButton) {
        numberClicked(val: "7")
    }
    
    @IBAction func eightBtn(_ sender: UIButton) {
        numberClicked(val: "8")
    }
    
    @IBAction func nineBtn(_ sender: UIButton) {
        numberClicked(val: "9")
    }
    
    func numberClicked(val: String){
        //check if empty variable is false, if yes, clear display, set res to empty and set empty variable to true
        if empty == false {
            resultOutlet.text = ""
            res = ""
            empty = true
        }
        //append the val variable to res and display at resultOutlet
        res += val
        resultOutlet.text = res
    }
    
}

