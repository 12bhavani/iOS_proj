//
//  ViewController.swift
//  demo2
//
//  Created by Bhavani Kongari on 4/2/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tf1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: UIButton) {
        var tf1 = Int(tf1.text!)!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "segue1"{
            var destination = segue.destination as! oneViewController
            destination.tf1 = Int(tf1.text!)!
        }
        
    }
    
}
