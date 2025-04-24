//
//  ViewController.swift
//  demo
//
//  Created by Bhavani Kongari on 4/1/25.
//

import UIKit

class ViewController: UIViewController {
    
    var res = 0
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btn1(_ sender: UIButton) {
        var tf1 = Int(tf1.text!)!
        var tf2 = Int(tf2.text!)!
        res = tf1+tf2
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "segue1"{
            var destination = segue.destination as! oneViewController
            destination.res = res
        }
        
    }
    
}
