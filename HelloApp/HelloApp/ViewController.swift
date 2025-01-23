//
//  ViewController.swift
//  HelloApp
//
//  Created by Bhavani Kongari on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOL: UITextField!
    
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        var name = inputOL.text!
        outputOL.text = "Hello, \(name)!"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

