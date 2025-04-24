//
//  ViewController.swift
//  DiscountApp_MVC
//
//  Created by Bhavani Kongari on 3/20/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discRateOL: UITextField!
    
    var finalAmnt:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcBtnClicked(_ sender: UIButton) {
        //read the amount and convert to double and assign it to variable.
        var amnt:Double = Double(amountOL.text!)!
        //read the discount rate and convert it into double
        var discrate:Double = Double(discRateOL.text!)!
        finalAmnt = amnt-(amnt*(discrate/100))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.amount = amountOL.text!
            destination.discount = discRateOL.text!
            destination.priceAfterDisocunt = String(finalAmnt)
        }
    }
    
}

