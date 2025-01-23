//
//  ViewController.swift
//  GoodByeApp
//
//  Created by Bhavani Kongari on 1/22/25.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var lastNOL: UITextField!
    
    
    @IBOutlet weak var firstNOL: UITextField!
    
    
    @IBOutlet weak var displayOL: UILabel!
    
    
    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //read lastname and firstname entered by user
        var input1 = lastNOL.text!
        var input2 = firstNOL.text!
        
        //assign it to displayOL
        displayOL.text = "Good Bye, \(input2) \(input1)!"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

