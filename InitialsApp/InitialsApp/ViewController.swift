//
//  ViewController.swift
//  InitialsApp
//
//  Created by Bhavani Kongari on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstOL: UITextField!
    
    @IBOutlet weak var lastOL: UITextField!
    
    
    @IBOutlet weak var displayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //Read the firstOL and lastOL and assign it to firstname and lastname variables
        var firstname = firstOL.text!
        var lastname = lastOL.text!
        
        //manipulate firstname and lastname as thier first letters
        var fn = firstname.first!.uppercased()
        var ln = lastname.first!.uppercased()
        
        //var fn = firstname.prefix(1).uppercased()
        //var ln = lastname.prefix(1).uppercased()
        
        //display the text "Your initials are: \(ln).\(fn)."
        displayOL.text = "Your initials are: \(ln).\(fn)."
    }
    
}

