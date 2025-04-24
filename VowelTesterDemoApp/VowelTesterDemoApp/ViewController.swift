//
//  ViewController.swift
//  VowelTesterDemoApp
//
//  Created by Bhavani Kongari on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        var str = inputOL.text!
        str = str.lowercased()
        if str.contains("a")||str.contains("e")||str.contains("i")||str.contains("o")||str.contains("u"){
            outputOL.text = ("Given word has vowel")
        }
        else{
            outputOL.text = ("Given word doesnot conatins vowel")
        }
            
    }

}

